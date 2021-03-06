.class public final Lcom/android/internal/telephony/TelephonyUtils;
.super Ljava/lang/Object;
.source "TelephonyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyUtils$Roaming;
    }
.end annotation


# static fields
.field public static final GMM_ATTACH_MODE:Ljava/lang/String; = "gmm_attach_mode"

.field public static final KT_SHOW_ROAMING_PREFIX:Ljava/lang/String; = "show_roaming_prefix"

.field private static final LOG_TAG:Ljava/lang/String; = "TelephonyUtils"

.field public static final OEM_RAD_DIALER_POPUP:Ljava/lang/String; = "oem_rad_dialer_popup"

.field public static final OEM_RAD_SETTING:Ljava/lang/String; = "oem_rad_setting"

.field public static final OEM_RAD_TEST:Ljava/lang/String; = "oem_rad_test"

.field public static final OEM_RAD_TEST_RCV_PRFIX:Ljava/lang/String; = "oem_rad_test_rcv_prfix"

.field private static final WFC_FEATURE:Z

.field private static mIPPhoneRegistered:Z

.field public static persoLockChecked:Z

.field private static sContext:Landroid/content/Context;

.field private static sEnglishStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sKoreanStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyUtils;->sKoreanStringMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyUtils;->sEnglishStringMap:Ljava/util/HashMap;

    sput-boolean v2, Lcom/android/internal/telephony/TelephonyUtils;->persoLockChecked:Z

    sput-boolean v2, Lcom/android/internal/telephony/TelephonyUtils;->mIPPhoneRegistered:Z

    const-string v0, "ims"

    const-string v1, "ro.product.ims"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyUtils;->WFC_FEATURE:Z

    :goto_0
    return-void

    :cond_0
    sput-boolean v2, Lcom/android/internal/telephony/TelephonyUtils;->WFC_FEATURE:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ChildNode(Lorg/w3c/dom/Node;Ljava/util/HashMap;)V
    .locals 7
    .param p0, "node"    # Lorg/w3c/dom/Node;
    .param p1, "map"    # Ljava/util/HashMap;

    .prologue
    const/4 v6, 0x0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .local v1, "Node_Name":Ljava/lang/String;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .local v2, "Text_Content":Ljava/lang/String;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    .local v0, "Attr_len":I
    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERROR!!! Attr_len musb be 1. ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyUtils;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .local v3, "attrName":Ljava/lang/String;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .local v4, "attrValue":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getIPPhoneState()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyUtils;->mIPPhoneRegistered:Z

    return v0
.end method

.method public static getTelephonyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const-string v6, ""

    .local v6, "retValue":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/telephony/TelephonyUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v4, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .local v4, "locale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .local v2, "lancode":Ljava/lang/String;
    const-string v9, "ko"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/internal/telephony/TelephonyUtils;->sKoreanStringMap:Ljava/util/HashMap;

    invoke-virtual {v9, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "value":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/internal/telephony/TelephonyUtils;->sEnglishStringMap:Ljava/util/HashMap;

    invoke-virtual {v9, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "value":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v8, ""

    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_2
    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :cond_3
    const-string v9, "\\\\[n]"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, "splitStr":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v5, v0, v1

    .local v5, "paramPair":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "line.separator"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "paramPair":Ljava/lang/String;
    .end local v7    # "splitStr":[Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    sget-object v9, Lcom/android/internal/telephony/TelephonyUtils;->sEnglishStringMap:Ljava/util/HashMap;

    invoke-virtual {v9, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .restart local v8    # "value":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/internal/telephony/TelephonyUtils;->sKoreanStringMap:Ljava/util/HashMap;

    invoke-virtual {v9, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "value":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8    # "value":Ljava/lang/String;
    goto :goto_0

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v3    # "len$":I
    .restart local v7    # "splitStr":[Ljava/lang/String;
    :cond_5
    const-string v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_6
    return-object v6
.end method

.method public static getUsimPersoImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "pref.usim_perso_imsi"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isFactoryMode()Z
    .locals 2

    .prologue
    const-string v1, "ro.factorytest"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "factoryTestStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isIPPhoneSupported()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyUtils;->WFC_FEATURE:Z

    return v0
.end method

.method public static isKTOTAMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "pref.ota_usim_running"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final isQCRIL()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string v1, "Is_QCRIL"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUsimPersoLocked(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "pref.usim_perso_locked"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "TelephonyUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final parseKrTelephonyStringXML(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sput-object p0, Lcom/android/internal/telephony/TelephonyUtils;->sContext:Landroid/content/Context;

    :try_start_0
    const-string v4, "/system/etc/kr_telephony_string.xml"

    .local v4, "filepath":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .local v2, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .local v1, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Element;->normalize()V

    const-string v5, "Korean"

    sget-object v6, Lcom/android/internal/telephony/TelephonyUtils;->sKoreanStringMap:Ljava/util/HashMap;

    invoke-static {v5, v0, v6}, Lcom/android/internal/telephony/TelephonyUtils;->viewElement(Ljava/lang/String;Lorg/w3c/dom/Document;Ljava/util/HashMap;)V

    const-string v5, "English"

    sget-object v6, Lcom/android/internal/telephony/TelephonyUtils;->sEnglishStringMap:Ljava/util/HashMap;

    invoke-static {v5, v0, v6}, Lcom/android/internal/telephony/TelephonyUtils;->viewElement(Ljava/lang/String;Lorg/w3c/dom/Document;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v1    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "filepath":Ljava/lang/String;
    :goto_0
    return-void

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception create KR Telephony String XML : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setIPPhoneState(Z)V
    .locals 0
    .param p0, "state"    # Z

    .prologue
    sput-boolean p0, Lcom/android/internal/telephony/TelephonyUtils;->mIPPhoneRegistered:Z

    return-void
.end method

.method private static viewElement(Ljava/lang/String;Lorg/w3c/dom/Document;Ljava/util/HashMap;)V
    .locals 7
    .param p0, "NodeName"    # Ljava/lang/String;
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "map"    # Ljava/util/HashMap;

    .prologue
    invoke-interface {p1, p0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .local v4, "nodeLst":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "cnt":I
    const-string v5, "================================"

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyUtils;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .local v0, "clist":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_1

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "string"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/android/internal/telephony/TelephonyUtils;->ChildNode(Lorg/w3c/dom/Node;Ljava/util/HashMap;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "clist":Lorg/w3c/dom/NodeList;
    .end local v3    # "j":I
    :cond_2
    const-string v5, "================================"

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyUtils;->log(Ljava/lang/String;)V

    return-void
.end method
