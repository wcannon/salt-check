# -*- coding: utf-8 -*-

import logging
import yaml
import xml.etree.ElementTree as xml
import xml.dom.minidom as minidom
log = logging.getLogger(__name__)

def _text_node(name, text=None):
    element = xml.Element(name)
    if text:
        element.text = text
    return element

def _test_case(classname, name, time=False):
    element = xml.Element('testcase')
    element.attrib['name'] = name
    element.attrib['classname'] = classname
    if time is not False:
        element.attrib['time'] = time
    return element

def output(data):
    root = xml.Element('testsuite')
    for d_element in data:
        output = data[d_element]
        for o_element in output:
            for key in o_element:
                value = o_element[key]
                if key == 'TEST RESULTS':
                    root.attrib['name'] = 'Saltcheck state(s) junit tests results'
                    root.attrib['errors'] = '0'
                    root.attrib['failures'] = str(value['Failed'])
                    root.attrib['skipped'] = str(value['Missing Tests'] + value['Skipped'])
                    root.attrib['tests'] = str(value['Passed'] + value['Failed'] + value['Missing Tests'])
                    root.attrib['time'] = str(value['Execution Time'])
                else:
                    if len(value) == 0:
                        test_case_element = _test_case(('state.' + key), 'Undefined', '0.0')
                        skipped_element = _text_node('skipped')
                        test_case_element.append(skipped_element)
                        root.append(test_case_element)
                    else:
                        for case in value:
                            result = value[case]['status']
                            time = str(value[case]['duration'])
                            if result == 'Pass':
                                test_case_element = _test_case(('state.' + key), case, time)
                                root.append(test_case_element)
                            elif result == 'Skip':
                                test_case_element = _test_case(('state.' + key), case, time)
                                skipped_element = _text_node('skipped')
                                test_case_element.append(skipped_element)
                                root.append(test_case_element)
                            else:
                                test_case_element = _test_case(('state.' + key), case, time)
                                failure_element = _text_node('failure', result)
                                test_case_element.append(failure_element)
                                root.append(test_case_element)

    output = minidom.parseString(xml.tostring(root, encoding='utf8', method='xml'))

    return output.toprettyxml()

