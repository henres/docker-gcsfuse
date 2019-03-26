#!/bin/sh
mkdir -p ${MOUNT_DIR}

ADDITIONNAL_PARAMETER=""

if [ -n "${KEY_FILE}" ]
then
  ADDITIONNAL_PARAMETER="--key-file ${KEY_FILE}"
fi

gcsfuse ${ADDITIONNAL_PARAMETER} "${GCS_BUCKET}" "${MOUNT_DIR}"
exec $@
