FROM python:2.7-onbuild

MAINTAINER JHR Farmery <jhrf2@cam.ac.uk>

#Because telomerecat is a pure python package all installation is
#handeled in the requirements file. 
CMD ["telomerecat"]
