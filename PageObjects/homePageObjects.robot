*** Settings ***
Library  AppiumLibrary
Library  BuiltIn


*** Variables ***
${ACCOUNT_BTN}          com.pozitron.hepsiburada:id/account_icon
${SEARCH_BOX_BTN}       com.pozitron.hepsiburada:id/textViewSearchBox
${SEARCH_BOX_TXT}       com.pozitron.hepsiburada:id/etACBSearchBox
${SEARCH_RESULT_LST}    com.pozitron.hepsiburada:id/search_suggestion_title
${SEARCH_RESULT_LABEL}  //android.widget.TextView[@text='kablosuz bluetooth kulaklık']
${FRAME_CLOSE_BTN}      //android.widget.ImageButton[@content-desc="close"]
${FILTER_BTN}           com.pozitron.hepsiburada:id/tv_product_list_options_bar_filter
${PRODUCT_RESULT_LST}   //android.widget.ImageView[@content-desc="ürün fotoğrafı"][1]
