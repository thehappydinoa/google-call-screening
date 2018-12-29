SHARED_PREF_FILE=/data/data/com.google.android.dialer/shared_prefs/dialer_phenotype_flags.xml

if [ -f $SHARED_PREF_FILE ]; then

  sed -i -e 's/name="G__speak_easy_bypass_locale_check" value="false"/name="G__speak_easy_bypass_locale_check" value="true"/g' $SHARED_PREF_FILE
  sed -i -e 's/name="G__speak_easy_enable_listen_in_button" value="false"/name="G__speak_easy_enable_listen_in_button" value="true"/g' $SHARED_PREF_FILE
  sed -i -e 's/name="__data_rollout__SpeakEasy.OverrideUSLocaleCheckRollout__launched__" value="false"/name="__data_rollout__SpeakEasy.OverrideUSLocaleCheckRollout__launched__" value="true"/g' $SHARED_PREF_FILE
  sed -i -e 's/name="G__enable_speakeasy_details" value="false"/name="G__enable_speakeasy_details" value="true"/g' $SHARED_PREF_FILE
  sed -i -e 's/name="G__speak_easy_enabled" value="false"/name="G__speak_easy_enabled" value="true"/g' $SHARED_PREF_FILE
  sed -i -e 's/name="G__speakeasy_show_privacy_tour" value="false"/name="G__speakeasy_show_privacy_tour" value="true"/g' $SHARED_PREF_FILE
  sed -i -e 's/name="__data_rollout__SpeakEasy.SpeakEasyDetailsRollout__launched__" value="false"/name="__data_rollout__SpeakEasy.SpeakEasyDetailsRollout__launched__" value="true"/g' $SHARED_PREF_FILE
  sed -i -e 's/name="__data_rollout__SpeakEasy.CallScreenOnPixelTwoRollout__launched__" value="false"/name="__data_rollout__SpeakEasy.CallScreenOnPixelTwoRollout__launched__" value="true"/g' $SHARED_PREF_FILE

  am force-stop "com.google.android.dialer"

fi
