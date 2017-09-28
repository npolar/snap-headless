#!/bin/bash

INPUTFILE=$1
OUTPUTFILE=$2

~/snap/bin/gpt ~/snap/bin/Calib_Spk_TC2m_LinDB_EPSG3031.xml -Pinput1="${INPUTFILE}" -Ptarget1="${OUTPUTFILE}"
gdal_translate -of JPEG -ot Byte -scale ${OUTPUTFILE%.*}.data/Sigma0_HH_db.img ${OUTPUTFILE%.*}.jpg -co WORLDFILE=yes -co QUALITY=65
