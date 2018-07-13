# -*- coding: utf-8 -*-
'''
A module to enable easy functional testing of saltcheck

This module will make it easy to request data for testing saltcheck assertions

:codeauthor:    William Cannon <william.cannon@gmail.com>
:maturity:      new
'''

__virtualname__ = 'saltcheck_returns'


def __virtual__():
    '''
    Check dependencies - may be useful in future
    '''
    return __virtualname__

''' return types to support, all will have a default value:
    string
    int
    float
    list
    dictionary - given dict
    empty - no value returned at all
    notempty - given string
    bool - True | False
'''
        

def get_string(given_val="TestString"):
    '''
    Return the given string

    CLI Example:
        salt '*' saltcheck_returns.get_string 'some-value-here'
    '''
    return given_val

def get_int(given_val=789):
    '''
    Return the given int

    CLI Example:
        salt '*' saltcheck_returns.get_int 777
    '''
    try:
        val = int(given_val)
    except:
        val = given_val
    return val

def get_float(given_val=600.245):
    '''
    Return the given float

    CLI Example:
        salt '*' saltcheck_returns.get_float 22.345
    '''
    try:
        val = float(given_val)
    except:
        val = given_val
    return val

def get_list(given_val=['one', 'two', 'three']):
    '''
    Return the given list

    CLI Example:
        salt '*' saltcheck_returns.get_list '["a", "b", "c"]'
    '''
    return given_val

def get_dict(given_val={'one':1, 'two':2, 'three':3}):
    '''
    Return the given dict

    CLI Example:
        salt '*' saltcheck_returns.get_dict '{"a":12, "b":13, "c":14}'
    '''
    return given_val

def get_empty():
    '''
    Return nothing

    CLI Example:
        salt '*' saltcheck_returns.get_empty'
    '''
    return

def get_bool(given_val=True):
    '''
    Return a bool, interprets True|False using python logic

    CLI Example:
        salt '*' saltcheck_returns.get_bool True'
        salt '*' saltcheck_returns.get_bool False'
    '''
    try:
        val = bool(given_val)
    except:
        val = True
    return val
