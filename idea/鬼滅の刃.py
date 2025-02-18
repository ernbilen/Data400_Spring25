


# In[247]:


# Characters to track (Tanjirou, Zenitsu, Inosuke)
main_characters = {
    "Tanjirou Kamado": "Tanjirou",
    "Zenitsu Agatsuma": "Zenitsu",
    "Inosuke Hashibira": "Inosuke"
}


# In[248]:


def analyze_sentiment(character, season):
    """
    Performs sentiment analysis on a character's dialogue in a given season.
    Returns polarity (-1 to 1) and subjectivity (0 to 1).
    """
    dialogue = season_dialogue_data.get(season, {}).get(character, [])
    text = ' '.join(dialogue)

    if not text.strip():
        return None  # No dialogue for this character

    blob = TextBlob(text)
    polarity = blob.sentiment.polarity
    subjectivity = blob.sentiment.subjectivity

    return {"polarity": polarity, "subjectivity": subjectivity}


# In[250]:


# Analyze sentiment for each character per season
sentiment_data = {}

for season in season_dialogue_data.keys():
    sentiment_data[season] = {}
    for full_name, short_name in tracked_characters.items():
        sentiment_data[season][full_name] = analyze_sentiment(short_name, season)

# Display sentiment analysis results
for season, characters in sentiment_data.items():
    print(f"\n Sentiment Analysis for {season}:")
    for character, sentiment in characters.items():
        if sentiment:
            print(f"  - {character}: Polarity = {sentiment['polarity']:.2f}, Subjectivity = {sentiment['subjectivity']:.2f}")


# In[251]:


# Prepare sentiment analysis data for visualization
sentiment_records = []

for season, characters in sentiment_data.items():
    for character, sentiment in characters.items():
        if sentiment:
            sentiment_records.append({
                "Character": character,
                "Season": season,
                "Polarity": sentiment["polarity"],
                "Subjectivity": sentiment["subjectivity"]
            })

# Convert list of dictionaries to a DataFrame
sentiment_df = pd.DataFrame(sentiment_records)


# In[255]:


# Convert Season to categorical type for proper ordering
sentiment_df["Season"] = pd.Categorical(sentiment_df["Season"], categories=sorted(season_dialogue_data.keys()), ordered=True)

# Plot sentiment polarity trends across seasons for each character
plt.figure(figsize=(12, 6))
for character in tracked_characters.keys():
    character_data = sentiment_df[sentiment_df["Character"] == character]
    if not character_data.empty:
        plt.plot(character_data["Season"], character_data["Polarity"], marker='o', label=character)

plt.xlabel("Season")
plt.ylabel("Sentiment Polarity")
plt.title("Sentiment Polarity Trends Across Seasons")
plt.xticks(rotation=45)
plt.legend(loc="upper left", bbox_to_anchor=(1, 1))
plt.grid(True)
plt.show()


# In[253]:


# Identify most positive and most negative character
avg_polarity = sentiment_df.groupby("Character")["Polarity"].mean()
most_positive_character = avg_polarity.idxmax()
most_negative_character = avg_polarity.idxmin()

print(f"\n Most Positive Character Overall: {most_positive_character} (Avg Polarity: {avg_polarity.max():.2f})")
print(f" Most Negative Character Overall: {most_negative_character} (Avg Polarity: {avg_polarity.min():.2f})")


# In[220]:


nlp = spacy.load("en_core_web_lg")

def lexical_diversity(character, season):
    """
    Measures lexical diversity (unique words / total words) for a character in a season.
    Aggregates dialogue from all episodes in that season.
    """
    season_dialogue = []

    # Iterate through all episodes, making sure they belong to the season
    for episode, episode_data in dialogue_data.items():
        if season in episode:  # Check if the episode belongs to the given season
            season_dialogue.extend(episode_data.get(character, []))

    # Join all dialogue into a single string
    text = ' '.join(season_dialogue)

    # If there is no dialogue, return 0 instead of None
    if not text.strip():
        return 0

    # Process text with spaCy for tokenization
    doc = nlp(text)
    words = [token.text.lower() for token in doc if token.is_alpha]

    # Compute lexical diversity
    unique_words = set(words)
    diversity_score = len(unique_words) / len(words) if words else 0

    return diversity_score


# In[258]:


diversity_tanjirou = lexical_diversity("Tanjirou", "Demon Slayer S.1")
diversity_zenitsu = lexical_diversity("Zenitsu", "Demon Slayer S.1")
diversity_inosuke = lexical_diversity("Inosuke", "Demon Slayer S.1")

print(f"Tanjirou's Lexical Diversity in Season 1: {diversity_tanjirou}")
print(f"Zenitsu's Lexical Diversity in Season 1: {diversity_zenitsu}")
print(f"Inosuke's Lexical Diversity in Season 1: {diversity_inosuke}")


# In[259]:


diversity_tanjirou = lexical_diversity("Tanjirou", "Demon Slayer S.2")
diversity_zenitsu = lexical_diversity("Zenitsu", "Demon Slayer S.2")
diversity_inosuke = lexical_diversity("Inosuke", "Demon Slayer S.2")

print(f"Tanjirou's Lexical Diversity in Season 2: {diversity_tanjirou}")
print(f"Zenitsu's Lexical Diversity in Season 2: {diversity_zenitsu}")
print(f"Inosuke's Lexical Diversity in Season 2: {diversity_inosuke}")


# In[257]:


diversity_tanjirou = lexical_diversity("Tanjirou", "Demon Slayer S.3")
diversity_zenitsu = lexical_diversity("Zenitsu", "Demon Slayer S.3")
diversity_inosuke = lexical_diversity("Inosuke", "Demon Slayer S.3")

print(f"Tanjirou's Lexical Diversity in Season 3: {diversity_tanjirou}")
print(f"Zenitsu's Lexical Diversity in Season 3: {diversity_zenitsu}")
print(f"Inosuke's Lexical Diversity in Season 3: {diversity_inosuke}")


# In[256]:


diversity_tanjirou = lexical_diversity("Tanjirou", "Demon Slayer S.4")
diversity_zenitsu = lexical_diversity("Zenitsu", "Demon Slayer S.4")
diversity_inosuke = lexical_diversity("Inosuke", "Demon Slayer S.4")

print(f"Tanjirou's Lexical Diversity in Season 4: {diversity_tanjirou}")
print(f"Zenitsu's Lexical Diversity in Season 4: {diversity_zenitsu}")
print(f"Inosuke's Lexical Diversity in Season 4: {diversity_inosuke}")


# In[240]:


def extract_episode_number(episode_name):
    """
    Extracts episode number from an episode string.
    Example: "Demon Slayer S.4 E.03" -> 3
    """
    match = re.search(r"E\.(\d+)", episode_name)
    return int(match.group(1)) if match else float('inf')  # Handle unexpected cases


# In[261]:


def analyze_sentiment_with_events(character, season):
    """
    Computes sentiment analysis over time and overlays key events.
    Ensures episodes are sorted numerically.
    """
    sentiment_records = []

    # Iterate through all episodes in the given season
    for episode, episode_data in dialogue_data.items():
        if season in episode:
            dialogues = episode_data.get(character, [])
            episode_text = ' '.join(dialogues)

            if episode_text.strip():
                sentiment = TextBlob(episode_text).sentiment
                sentiment_records.append({
                    "Episode": episode,
                    "Episode_Number": extract_episode_number(episode),
                    "Polarity": sentiment.polarity
                })

    # Convert to DataFrame and sort by episode number
    sentiment_df = pd.DataFrame(sentiment_records)
    sentiment_df = sentiment_df.sort_values(by="Episode_Number")  # Sort numerically

    # Plot sentiment trend over episodes
    if not sentiment_df.empty:
        plt.figure(figsize=(10, 5))
        plt.plot(sentiment_df["Episode"], sentiment_df["Polarity"], marker='o', linestyle='-', label="Polarity")
        plt.xticks(rotation=45, ha='right')
        plt.axhline(y=0, color='gray', linestyle='--')

        plt.title(f"Sentiment Analysis for {character} in {season}")
        plt.xlabel("Episode")
        plt.ylabel("Sentiment Polarity")
        plt.legend()
        plt.grid()
        plt.show()

analyze_sentiment_with_events("Inosuke", "Demon Slayer S.4")


# In[246]:


def compare_character_sentiment(season, characters):
    """
    Compares sentiment trends of multiple characters over a season.
    Ensures episodes are sorted numerically.
    """
    plt.figure(figsize=(12, 6))

    for character in characters:
        sentiment_records = []

        for episode, episode_data in dialogue_data.items():
            if season in episode:
                dialogues = episode_data.get(character, [])
                episode_text = ' '.join(dialogues)

                if episode_text.strip():
                    sentiment = TextBlob(episode_text).sentiment
                    sentiment_records.append({
                        "Episode": episode,
                        "Episode_Number": extract_episode_number(episode),
                        "Polarity": sentiment.polarity
                    })

        # Convert to DataFrame and sort by episode number
        sentiment_df = pd.DataFrame(sentiment_records)
        sentiment_df = sentiment_df.sort_values(by="Episode_Number")  # Ensure correct order

        if not sentiment_df.empty:
            plt.plot(sentiment_df["Episode"], sentiment_df["Polarity"], marker='o', linestyle='-', label=character)

    plt.xticks(rotation=45, ha='right')
    plt.axhline(y=0, color='gray', linestyle='--')
    plt.title(f"Character Sentiment Comparison in {season}")
    plt.xlabel("Episode")
    plt.ylabel("Sentiment Polarity")
    plt.legend()
    plt.grid()
    plt.show()

compare_character_sentiment("Demon Slayer S.4", ["Tanjirou", "Zenitsu", "Inosuke"])


# In[ ]:




