# valid phone number

import re
def validPhoneNumber(phoneNumber):
    return bool(re.fullmatch('\(\d{3}\)\s\d{3}\-\d{4}', phoneNumber))

# autocomplete
import re
def autocomplete(prefix, dictionary):
    return [x for x in dictionary
            if x.lower().startswith(
                                    re.sub('[^a-zA-Z]', '', prefix.lower())
                                    )
                                    ][:5]