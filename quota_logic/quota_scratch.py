import subprocess
from pathlib import Path
import os

def create_scratch_filesystem(scratch_dir,size):
    result = subprocess.run(['sudo','mount','-t','tmpfs', '-o', f'size={size}M', 'tmpfs', f'{scratch_dir}'])

def destroy_scratch_filesystem(scratch_dir):
    subprocess.run(['sudo','umount',f'{scratch_dir}'])
