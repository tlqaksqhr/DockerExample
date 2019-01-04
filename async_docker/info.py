#!/usr/bin/env python3

import asyncio
from aiodocker.docker import Docker

async def demo(docker):
    print('-----------------------------------')
    print('-- Check Docker Version Information')
    data_version = await docker.version()
    for key,value in data_version.items():
        print(key,':',value)

    print('-----------------------------------')
    print('-- Check Docker Image List')
    images = await docker.images.list()
