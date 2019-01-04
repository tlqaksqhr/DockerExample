import pytest
from quota_scratch import create_scratch_filesystem, destroy_scratch_filesystem
from pathlib import Path

scratch_dir = Path("scratch")
size = 64

create_scratch_filesystem(scratch_dir,size)
