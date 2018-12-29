# Google Call Screening ![Google Phone](https://img.shields.io/badge/Tested%20On-Version%2026-blue.svg?logo=google&longCache=true&style=flat-square) ![Magisk](https://img.shields.io/badge/Magisk-17%2B-00B39B.svg?style=flat-square&logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAMAAAAolt3jAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAABg1BMVEUAAAD9/f39/f39p4v9o4UuP6L/ckT/ckMmPaWYgbj/bxb/bhybg7j4usj4usj6u8j6u8gyMTIyMTExMTExMTExMTEoLCsmKikxMTH////////9/f39/f39/f39/f39/f0xMTExMTExMTExMTH9///9vEP9sif9sif9vEP9///9km/9+/z95Lb9siX9siX95bj9+vz9i2b+bDv+xbP9+/P9tCv9tCv9/PT+xLH+bDu+YF/wdlX/5Nf9vEH9vUL/49fwdVS9YGD//+OFdrVPSpltYaHqs1TpslZtYaFPSpqGdrX//+T/1M/vtcaag7pkYrO4i1K3i1RkYrObg7rwtcf/1dAAAADmrrn/v8t4YWMwMC8wMC96Y2T/v8vmrrkAAAAhJiVIQUJXSk1BQUFPT09UVFVERERYTE5IQUIiJyYIDAuam5vm5uZjY2NoaGjm5uaZmpoBBAT///////9jY2Nqamr///////////9TU1NWVlb///8xMTExMTExMTExMTH///9CFnTpAAAAgHRSTlMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEhQUEgEGcYqWlotvBVG3qbSzqrZPYq6ImpqIrmEDdsaZZmWaxnUDA5DGjiwskMaPAgVpuGiNjGa4aAUHRoerc3Wuh0UHCV2xrK65XAkZoLSylhIXeWoRIBgAAPXwkEAAAAABYktHRBnsbrWIAAAACXBIWXMAAAuJAAALiQE3ycutAAAAB3RJTUUH4gwCFTA4FQjaVQAAAKRJREFUCNdjYMAAjCqqauoamkwQHrOWto6unr6BIQuIx8pmZGxiamZuYcnOAeRycllZ29ja2Ts4cvMAubxOzi6ubu4enl7efEAuv4+vn39AYFBwSKgAkCsYFh4RGRUdExsXLwTkCickJiWnpKalZ2SKALmiYlnZObl5+QWF4hIgmySliopLSsvKJaGukpapqKyqlpWDuVJeoaZWEcnVSnX1ymAGAJVTH9o8hgBiAAAAJXRFWHRkYXRlOmNyZWF0ZQAyMDE4LTEyLTAyVDIxOjQ4OjU2LTA1OjAwAAhnNAAAACV0RVh0ZGF0ZTptb2RpZnkAMjAxOC0xMi0wMlQyMTo0ODo1Ni0wNTowMHFV34gAAAAASUVORK5CYII=)

This module enables Google Call Screening on Android 9+.

## Enable with Magisk

1.  Download [latest zip](https://github.com/thehappydinoa/google-call-screening/releases/latest/)

2.  Install with Magisk Manager

## Enable Manually

```bash
export SHARED_PREF_FILE=/data/data/com.google.android.dialer/shared_prefs/dialer_phenotype_flags.xml

sed -i -e 's/name="G__speak_easy_bypass_locale_check" value="false"/name="G__speak_easy_bypass_locale_check" value="true"/g' $SHARED_PREF_FILE
sed -i -e 's/name="G__speak_easy_enable_listen_in_button" value="false"/name="G__speak_easy_enable_listen_in_button" value="true"/g' $SHARED_PREF_FILE
sed -i -e 's/name="__data_rollout__SpeakEasy.OverrideUSLocaleCheckRollout__launched__" value="false"/name="__data_rollout__SpeakEasy.OverrideUSLocaleCheckRollout__launched__" value="true"/g' $SHARED_PREF_FILE
sed -i -e 's/name="G__enable_speakeasy_details" value="false"/name="G__enable_speakeasy_details" value="true"/g' $SHARED_PREF_FILE
sed -i -e 's/name="G__speak_easy_enabled" value="false"/name="G__speak_easy_enabled" value="true"/g' $SHARED_PREF_FILE
sed -i -e 's/name="G__speakeasy_show_privacy_tour" value="false"/name="G__speakeasy_show_privacy_tour" value="true"/g' $SHARED_PREF_FILE
sed -i -e 's/name="__data_rollout__SpeakEasy.SpeakEasyDetailsRollout__launched__" value="false"/name="__data_rollout__SpeakEasy.SpeakEasyDetailsRollout__launched__" value="true"/g' $SHARED_PREF_FILE
sed -i -e 's/name="__data_rollout__SpeakEasy.CallScreenOnPixelTwoRollout__launched__" value="false"/name="__data_rollout__SpeakEasy.CallScreenOnPixelTwoRollout__launched__" value="true"/g' $SHARED_PREF_FILE

am force-stop "com.google.android.dialer"
```

## Oneliner

```bash
curl -s -L https://git.io/fpKS6 | bash
```

## Notes

- The original `dialer_phenotype_flags.xml` is [here](https://gist.github.com/thehappydinoa/0fe1e0d3f87e24f65eacc38cde4b7daf)
- This module is included in [Pix3lify](https://github.com/Magisk-Modules-Repo/Pix3lify)
