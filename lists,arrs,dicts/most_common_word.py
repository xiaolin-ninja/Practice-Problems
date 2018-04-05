def common_word(phrase):
    """find most common word given a phrase
    >>> common_word("I really like a friend of a friend")
    ['friend']
    """

    words = phrase.split()
    words_count = {}
    largest_count = 0
    common_words = []

    for word in words:
        words_count[word] = words_count.get(word, 0) + 1
        if words_count[word] >= largest_count:
            largest_count = words_count[word]
            common_words.append(word)

    return common_words

print common_word('I really like a friend of a friend')


# def phrase_count(text, phrase):
#     """find most common phrase given a block of text
#     >>> phrase_count("The fox jumps over the moon moon the moon moon",
#     ['the','moon', 'moon'])
#     2
#     """

#     text = text.split()
#     count = 0

#     for i, word in enumerate(text):
#         if word == phrase[0]:
#             if text[i:i+len(phrase)] == phrase:
#                 count += 1

#     return count

# print phrase_count("The fox jumps over the moon moon the moon moon",
#     ['the','moon', 'moon'])
