def extract(query):
    """extract takes in a `query` API function (which returns the first 5
    usernames, lexicographically sorted, that start with a prefix) and returns
    the sorted list of all usernames in the database.
    For example:
    database = ["abracadara", "al", "alice", "alicia", "allen", "alter", "altercation", "bob", "element", "ello", "eve", "evening", "event", "eventually", "mallory"]
    query("a") #=> ["abracadara", "al", "alice", "alicia", "allen"]
    query("ab") #=> ["abracadara"]
    extract(query) #=> ["abracadara", "al", "alice", "alicia", "allen", "alter", "altercation", "bob", "element", "ello", "eve", "evening", "event", "eventually", "mallory"]
    """
    
    result = set()
    alphabet = 'abcdefghijklmnopqrstuvwxyz'

    def get_query(prefix):
        """recursive function that searches the prefix trees from a to z.
        The prefix of the next query is the first n letters of
        the last word returned from the previous query. ( n = depth )
        
        Begin with depth-first search.
        If a query returns less than 5 results (and is not the root),
        then breadth-first search until z and
        reverse-traverse breadth-first back to the root.
        
        Move on to the next tree.
        Example:
              query('a') #=> ["abracadara", "al", "alice", "alicia", "allen"]
              query('al') #=> ["al", "alice", "alicia", "allen", "alter"]
              query('alt') #=> ["alter", "altercation"]
              query('alu')...query('alz') #=> []
              query('am')...query('az') #=> []
              query('b') #=> ["bob"]
              query('c') #=> []
        """
        
        results = query(prefix)
        result.update(results)

        # base case,
        # if query returns less than 5 results, move on.
        if len(results) < 5:
            return

        # if the last query('a') result is 'antelope', we should
        # only check for 'an...az', since we know nothing before 'an' is
        # left in the database.
        # find the next letter and its index in the alphabet
        next_letter = results[-1][len(prefix)]
        idx = alphabet.index(next_letter)
        # traverse down the tree starting from that letter until z
        for a in alphabet[idx:]:
            new_prefix = prefix + a
            # do this recursively for each level until there are no more
            # words starting with that letter left in the database, then
            # move on to the next letter
            get_query(new_prefix)

    for l in alphabet:
        prefix = l
        # initial function call
        get_query(prefix)

    print 'results:', len(result)
    return sorted(result)

def main():
    """Runs your solution -- no need to update (except to maybe try out different databases).
    """
    database = ["abracadara", "al", "alice", "alicia",
    "allen", "alter",
    "altercation", "bob", "element", "ello", "eve", "evening", "event", "eventually", "mallory"]

    print 'database:',len(database)

    query = lambda prefix: [d for d in database if d.startswith(prefix)][:5]

    try:
        assert extract(query) == database
        print 'It works!'
    except:
        print 'Assertion Error! Missing words:', list(set(database) - set
            (extract(query)))

main()