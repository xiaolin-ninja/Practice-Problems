def ip_to_binary(ip):
    """ convert IP address to 32-bit binary
    >>> ip_to_binary(0.0.0.3)
    00000000000000000000000000000011
    """
    binary = ''
    chunks = ip.split(".")
    for chunk in chunks:
        binary = binary + make_8bit_binary(chunk)
    return binary

def make_8bit_binary(num):
    """ convert chunk to binary
    >>> '3'
    '11'
    """
    num = int(num)
    string = ''
    while num > 0:
        if num % 2 == 0:
            string = string + '0'
        else:
            string = '1' + string
        num = num/2
    return ((8 - len(string)) * '0') + string

print ip_to_binary('0.0.0.3')