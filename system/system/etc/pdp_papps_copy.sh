#!/system/bin/sh
# Copyright (c) 2016, Samsung Electronics Co., Ltd.

# PDP : Preloaded-Data Preservation

if [[ -d /system/preload ]]; then
  echo "[PDP] [pdp_pap__c_p_.sh]  cp apks from /s /p /* to /d /a" > /dev/kmsg
  /system/bin/cp -v -a -f /system/preload/* /data/app
  if [ $? -ne 0 ]; then echo "[PDP]![pdp_pap__c_p_.sh] ERROR, cp /s/p/* to /d/a r= $?" > /dev/kmsg; fi
fi

if [[ -d /system/carrier/preload ]]; then
  echo "[PDP] [pdp_pap__c_p_.sh]  cp apks from /s /c /p /* to /d /a" > /dev/kmsg
  /system/bin/cp -v -a -f /system/carrier/preload/* /data/app
  if [ $? -ne 0 ]; then echo "[PDP]![pdp_pap__c_p_.sh] ERROR, cp /s/c/p/* to /d/a r= $?" > /dev/kmsg; fi
fi

# /system/bin/chmod -R 0664 /data/app 2> /dev/kmsg
# /system/bin/chown -R system /data/app 2> /dev/kmsg
# /system/bin/chgrp -R system /data/app 2> /dev/kmsg

# echo "[PDP] [pdp_pap__c_p_.sh]  du /da /ap" > /dev/kmsg
# /system/bin/du /data/app > /dev/kmsg

# init process is waiting for this work to be finished.  let it knows.
echo "[PDP] [pdp_pap__c_p_.sh]  done" > /dev/kmsg
/system/bin/mkdir -p /data/pdp_bkup/fsh_papps_cp_done

# End of Preload_Apps_Copy.sh
