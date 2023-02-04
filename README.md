# .dotfile

This repository helps me configure my Linux environment such that all my laptops  are configured the same way. Actually, it's more for being as ease at work than I am at home :stuck_out_tongue_winking_eye:

# Prerequisites

I tried to automate as much as possible the deployment of the configuration.
It relies on:
* Python >= 3.10
* Ansible >= 7.1

# Get started

Start by cloning the repository:
```shell
git clone git@github.com:MadJlzz/dotfiles.git
```

Create a new `venv` and install dependencies:
```shell
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

Run the __playbook__ to configure everything!
```shell
ansible-playbook main.yml
```
