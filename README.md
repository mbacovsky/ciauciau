CIAU CIAU - Configuration and Installation AUtomation
=====================================================

Ciauciau is a simple set of script to automate installations of www.katello.org

It's a very trivial "framework" written in Bash and you can leverage it
for installation of various software projects. It has simple concept of 
steps and plans, so you can schedule installations and configurations
in a simple and reusable way.

Upstream site is at http://github.com/lzap/ciauciau

Best to use with http://github.com/lzap/snap-guest

Features
--------

 * installs and configures katello
 * highly flexible

Requirements
------------

 * bash :-)
 * coreutils
 * vim (no, you don't really need it, but it's recommended :-)

Installation
------------

 * git clone git://github.com/lzap/ciauciau.git
 * echo 'PATH=$PATH:ciauciau/bin' >> ~/.bashrc
 * source ~/.bashrc

How it works
------------

    Ciau Ciau provisioning script

    OPTIONS:
      -h    Show this message
      -p    Plan name (see ./plans directory)
      -e    Evaluate statement before plan file (see plan file for options)
      -x    Exclude one or more steps from the plan (grep syntax)
      -i    Include extra steps to the plan (separate by space)

    EXAMPLES:

      bin/ciau -p nightly
      bin/ciau -p nightly -x '(300|301)' -i 200-my-step.sh
      bin/ciau -p nightly -e 'MIRROR=http://abc/nightly EPEL=http://xyz/pup/epel'


Credits and license
-------------------

Ciau Ciau and all the scripts are distributed as public domain.

vim: tw=79:fo+=w
