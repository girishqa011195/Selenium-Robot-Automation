import os

def browser(browserName, browserVersion, platformName, suiteName, tunnelIdentifier):
    sauceOptions={
        "browserName": browserName,
        "browserVersion": browserVersion,
        "platformName": platformName,
        "screenResolution": '1600x1200',
        "name": suiteName,
        "tunnelIdentifier": tunnelIdentifier,
    }

    caps={
        "browserName": browserName,
        "platformName": platformName,
        "sauce:options": sauceOptions,
    }

    return caps