#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import sys

try:
    from setuptools import setup, find_packages
    from setuptools.command.test import test as TestCommand
except ImportError:
    from distutils.core import setup

readme = open('README.md').read()

class PyTest(TestCommand):
    def finalize_options(self):
        TestCommand.finalize_options(self)
        self.test_args = []
        self.test_suite = True

    def run_tests(self):
        import pytest
        errcode = pytest.main(self.test_args)
        sys.exit(errcode)

setup(
    name='mystuff',
    version='0.1.0',
    description='Just a simple template',
    long_description=readme,
    author='Wayne Werner',
    author_email='waynejwerner@gmail.com',
    url='https://github.com/waynew/docker-py-template',
    packages=find_packages(),
    cmdclass={'test': PyTest},
    include_package_data=True,
    install_requires=['flask', 
    ],
    entry_points={
        'console_scripts': [
            'doit = mystuff.app:run',
        ],
    },
    license="Copyright",
    zip_safe=False,
    keywords='',
    classifiers=[
        'Development Status :: 2 - Pre-Alpha',
        'Intended Audience :: Developers',
        'License :: Commercial Software',
        'Natural Language :: English',
        'Programming Language :: Python :: 3.4',
    ],
    test_suite='tests',
    tests_require=['pytest-cov', 'pytest',
    ],
)
