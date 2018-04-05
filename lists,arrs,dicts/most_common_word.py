def common_word(phrase):
    """find most common word given a phrase
    >>> common_word("I really like a friend of a friend")
    ['friend']
    """

    words = phrase.split()
    # words_count = {}
    # common_words = []

    # create dictionary
    words_count = { word: words.count(word) for word in words }
    # for word in words:
    #     words_count[word] = words_count.get(word, 0) + 1

    common_words = [ word for word, count in words_count.items()
                     if count == max(words_count.values()) ]

    # for word, count in words_count.items():
    #     if count == max(words_count.values()):
    #         common_words.append(word)

    return common_words


def phrase_count(text, phrase):
    """find most common phrase given a block of text
    >>> phrase_count("The fox jumps over the moon moon the moon moon",
    ['the','moon', 'moon'])
    2
    """

    text = text.split()
    count = 0

    for i, word in enumerate(text):
        if word == phrase[0]:
            if text[i:i+len(phrase)] == phrase:
                count += 1

    return count

# print phrase_count("The fox jumps over the moon moon the moon moon",
#     ['the','moon', 'moon'])
