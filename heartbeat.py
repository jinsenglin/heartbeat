#!/usr/bin/python

import time


INTERVAL = 3


if __name__ == '__main__':
    while True:
        print('epoch = {}'.format(int(time.time())))
        time.sleep(INTERVAL)
