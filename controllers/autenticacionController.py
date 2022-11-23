from flask import session
def vericarAutenticacion():
    if 'username' in session:
        return True
    else:
        return False
