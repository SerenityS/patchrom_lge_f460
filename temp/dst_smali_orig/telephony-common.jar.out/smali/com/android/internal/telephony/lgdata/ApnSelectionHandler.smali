.class public Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;
.super Landroid/os/Handler;
.source "ApnSelectionHandler.java"


# static fields
.field public static final CTC_CTLTE_APN:Ljava/lang/String; = "ctlte"

.field public static final CTC_CTNET_APN:Ljava/lang/String; = "ctnet"

.field public static final CTC_CTWAP_APN:Ljava/lang/String; = "ctwap"

.field public static final CTC_MCCMNC:Ljava/lang/String; = "46003"

.field public static final CTC_MCCMNC11:Ljava/lang/String; = "46011"

.field public static final KDDI_LTE_NET_APN:Ljava/lang/String; = "uno.au-net.ne.jp"

.field public static final KDDI_LTE_NET_FOR_DATA_APN:Ljava/lang/String; = "au.au-net.ne.jp"

.field public static final KDDI_MCCMNC:Ljava/lang/String; = "44050"

.field public static final KDDI_MCCMNC54:Ljava/lang/String; = "44054"

.field public static final KDDI_ROAM_LTE_NET_APN:Ljava/lang/String; = "uno.au-net.ne.jp"

.field public static final KDDI_ROAM_LTE_NET_FOR_DATA_APN:Ljava/lang/String; = "au.au-net.ne.jp"

.field public static final KT_Domestic_APN:Ljava/lang/String; = "lte150.ktfwing.com"

.field public static final KT_MCCMNC:Ljava/lang/String; = "45008"

.field public static final KT_Roaming_APN:Ljava/lang/String; = "lte150.ktfwing.com"

.field public static final LGT_Domestic_APN:Ljava/lang/String; = "internet.lguplus.co.kr"

.field public static final LGT_MCCMNC:Ljava/lang/String; = "45006"

.field public static final LGT_Roaming_APN:Ljava/lang/String; = "wroaming.lguplus.co.kr"

.field public static final LGT_Roaming_LTE_APN:Ljava/lang/String; = "lte-roaming.lguplus.co.kr"

.field private static final LOG_TAG:Ljava/lang/String; = "[LGE_DATA][ApnSelectionHandler] "

.field public static final REASON_ADDED_APN_FAILED:Ljava/lang/String; = "Added_APN_failed"

.field public static final REASON_SELECT_DEFAULT_APN:Ljava/lang/String; = "Select_default_APN_between_domestic_and_roaming"

.field public static final SKT_Domestic_APN:Ljava/lang/String; = "lte.sktelecom.com"

.field public static final SKT_IMS_APN:Ljava/lang/String; = "ims"

.field public static final SKT_MCCMNC:Ljava/lang/String; = "45005"

.field public static final SKT_MVNO_MCCMNC:Ljava/lang/String; = "45011"

.field public static final SKT_Roaming_3G_APN:Ljava/lang/String; = "roaming.sktelecom.com"

.field public static final SKT_Roaming_LTE_APN:Ljava/lang/String; = "lte-roaming.sktelecom.com"


# instance fields
.field public APN_FAIL_Flag:Z

.field public CTC_CTLTE_APN_ID:I

.field public CTC_CTNET_APN_ID:I

.field public CTC_CTWAP_APN_ID:I

.field public Domestic_APN_ID:I

.field public IMS_APN_ID:I

.field public KDDI_LTE_NET_APN_ID:I

.field public KDDI_LTE_NET_FOR_DATA_APN_ID:I

.field public KDDI_ROAM_LTE_NET_APN_ID:I

.field public KDDI_ROAM_LTE_NET_FOR_DATA_APN_ID:I

.field public Last_default_APN_ID:I

.field public Roaming_3G_APN_ID:I

.field public Roaming_LTE_APN_ID:I

.field public Roaming_check_APN_ID:I

.field featureset:Ljava/lang/String;

.field private mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p2, "p"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->APN_FAIL_Flag:Z

    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->IMS_APN_ID:I

    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_APN_ID:I

    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_FOR_DATA_APN_ID:I

    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_APN_ID:I

    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_FOR_DATA_APN_ID:I

    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTLTE_APN_ID:I

    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTNET_APN_ID:I

    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTWAP_APN_ID:I

    iput v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    const-string v0, "[LGE_DATA][ApnSelectionHandler] "

    const-string v1, "ApnSelectionHandler() has created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v0, "ro.afwdata.LGfeatureset"

    const-string v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->featureset:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public findAllOperatorApnID(Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 4
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    const-string v2, "<findAllOperatorApnID()> Entry !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .local v0, "usim_mcc_mnc":Ljava/lang/String;
    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<findAllOperatorApnID()> usim_mcc_mnc == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<findAllOperatorApnID()> apn.apn == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "46011"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v2, "ctlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTLTE_APN_ID:I

    if-nez v1, :cond_2

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTLTE_APN_ID:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTWAP_APN_ID:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTNET_APN_ID:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<findAllOperatorApnID()> CTC_CTWAP_APN_ID == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTWAP_APN_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<findAllOperatorApnID()> CTC_CTNET_APN_ID == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTNET_APN_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<findAllOperatorApnID()> CTC_CTLTE_APN_ID == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTLTE_APN_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<findAllOperatorApnID()> Domestic_APN_ID == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<findAllOperatorApnID()> Last_default_APN_ID == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<findAllOperatorApnID()> Roaming_3G_APN_ID == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v2, "ctnet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTNET_APN_ID:I

    if-nez v1, :cond_3

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTNET_APN_ID:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto/16 :goto_0

    :cond_3
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v2, "ctwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTWAP_APN_ID:I

    if-nez v1, :cond_0

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTWAP_APN_ID:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto/16 :goto_0

    :cond_4
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v2, "ctnet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTNET_APN_ID:I

    if-nez v1, :cond_5

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTNET_APN_ID:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto :goto_1

    :cond_5
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v2, "ctwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTWAP_APN_ID:I

    if-nez v1, :cond_1

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTWAP_APN_ID:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto :goto_1

    :cond_6
    const-string v1, "45006"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v2, "internet.lguplus.co.kr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    if-nez v1, :cond_7

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto/16 :goto_1

    :cond_7
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v2, "wroaming.lguplus.co.kr"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    if-nez v1, :cond_8

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto/16 :goto_1

    :cond_8
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v2, "lte-roaming.lguplus.co.kr"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    if-nez v1, :cond_1

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto/16 :goto_1

    :cond_9
    const-string v1, "45008"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v2, "lte150.ktfwing.com"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    if-nez v1, :cond_a

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto/16 :goto_1

    :cond_a
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v2, "lte150.ktfwing.com"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    if-nez v1, :cond_1

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto/16 :goto_1

    :cond_b
    const-string v1, "44050"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "44054"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_c
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v2, "uno.au-net.ne.jp"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_APN_ID:I

    if-nez v1, :cond_e

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_APN_ID:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    :cond_d
    :goto_2
    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_APN_ID:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_APN_ID:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    goto/16 :goto_1

    :cond_e
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v2, "au.au-net.ne.jp"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_FOR_DATA_APN_ID:I

    if-nez v1, :cond_f

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_FOR_DATA_APN_ID:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto :goto_2

    :cond_f
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v2, "uno.au-net.ne.jp"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_APN_ID:I

    if-nez v1, :cond_10

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_APN_ID:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto :goto_2

    :cond_10
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v2, "au.au-net.ne.jp"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_FOR_DATA_APN_ID:I

    if-nez v1, :cond_d

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_FOR_DATA_APN_ID:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto :goto_2

    :cond_11
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v2, "lte.sktelecom.com"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    if-nez v1, :cond_12

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto/16 :goto_1

    :cond_12
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v2, "ims"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->IMS_APN_ID:I

    if-nez v1, :cond_13

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->IMS_APN_ID:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto/16 :goto_1

    :cond_13
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v2, "roaming.sktelecom.com"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    if-nez v1, :cond_14

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto/16 :goto_1

    :cond_14
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v2, "lte-roaming.sktelecom.com"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    if-nez v1, :cond_1

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->id:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    goto/16 :goto_1
.end method

.method public selectApn(Ljava/lang/String;)V
    .locals 9
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    const-string v7, "<selectApn()> Entry !"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .local v5, "usim_mcc_mnc":Ljava/lang/String;
    const-string v6, "45005"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "45011"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "45006"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "45008"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    if-nez v6, :cond_3

    :cond_1
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    const-string v7, "APN id is 0, start set APN ID"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mLgDcTracker:Lcom/android/internal/telephony/lgdata/LgDcTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/lgdata/LgDcTracker;->setApnID()V

    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    if-nez v6, :cond_3

    :cond_2
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    const-string v7, "didn\'t allocated APN ID "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_3
    const/4 v3, 0x0

    .local v3, "changeAPN":Z
    const-string v6, "persist.radio.isroaming"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "IsRoaming_property":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v0

    .local v0, "IsRoaming":Z
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredNetworkMode()I

    move-result v2

    .local v2, "NWmode":I
    if-nez v5, :cond_4

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    const-string v7, "<selectApn()> usim_mcc_mnc is NULL. Just set \'Domestic APN\' to \'Preferred APN\', just in case!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto :goto_0

    :cond_4
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> usim_mcc_mnc : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> IsRoaming : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> Domestic_APN_ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> Roaming_3G_APN_ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> Roaming_LTE_APN_ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> Last_default_APN_ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v4

    .local v4, "mDP":Lcom/android/internal/telephony/dataconnection/DataProfile;
    if-eqz v4, :cond_6

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> getPreferredApn().id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iput-object v4, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> mDct.mPreferredDp == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v4

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> mDP == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> mDct.mPhone.getServiceState().getDataRegState() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> mDct.mPhone.getServiceState().getRadioTechnology() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllDps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    if-nez v4, :cond_b

    :cond_5
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> mAllDataProfilesList is NULL. || mAllDataProfilesList is Empty. || getPreferredApn() is NULL, getRadioTechnology["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    const-string v7, "<selectApn()> getPreferredApn() is NULL. Just set \'Domestic APN\' to \'Preferred APN\' in case of initializing APN DB."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "45005"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "45011"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "45006"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "45008"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "44050"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "44054"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "46003"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "46011"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    sget-boolean v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_CTC:Z

    if-eqz v6, :cond_9

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> mDct.getLTEDataEnable() == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getLTEDataEnable()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getLTEDataEnable()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "46011"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTLTE_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v4

    goto/16 :goto_1

    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto :goto_2

    :cond_9
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto :goto_2

    :cond_a
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApnToDefault()V

    goto/16 :goto_1

    :cond_b
    const-string v6, "45005"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "45011"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "45006"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "45008"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "44050"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "44054"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "46003"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "46011"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    :cond_c
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    sget-boolean v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_CTC:Z

    if-eqz v6, :cond_d

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CTC]<selectApn()> mDP == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CTC]<selectApn()> mDP.id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CTC]<selectApn()> CTC_CTLTE_APN_ID == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTLTE_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CTC]<selectApn()> CTC_CTNET_APN_ID == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTNET_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CTC]<selectApn()> CTC_CTWAP_APN_ID == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTWAP_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CTC]<selectApn()> Last_default_APN_ID == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CTC]<selectApn()> Domestic_APN_ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CTC]<selectApn()> Roaming_3G_APN_ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CTC]<selectApn()> NWmode == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTLTE_APN_ID:I

    if-ne v6, v7, :cond_17

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getLTEDataEnable()Z

    move-result v6

    if-eqz v6, :cond_16

    const-string v6, "46011"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTLTE_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    :cond_d
    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    sget-boolean v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_KDDI:Z

    if-eqz v6, :cond_f

    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_APN_ID:I

    if-eq v6, v7, :cond_e

    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_APN_ID:I

    if-ne v6, v7, :cond_19

    :cond_e
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    :goto_4
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> mDP.id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> KDDI_LTE_NET_APN_ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> KDDI_ROAM_LTE_NET_APN_ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> KDDI_LTE_NET_FOR_DATA_APN_ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_FOR_DATA_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> KDDI_ROAM_LTE_NET_FOR_DATA_APN_ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_FOR_DATA_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> Default APN ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> Roaming APN ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const-string v6, "Select_default_APN_between_domestic_and_roaming"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    if-eqz v4, :cond_12

    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    if-gt v6, v7, :cond_12

    if-eqz v0, :cond_22

    const-string v6, "46003"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "46011"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    :cond_10
    packed-switch v2, :pswitch_data_0

    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> [2] IsRoaming: Roaming enabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_5
    if-eqz v4, :cond_12

    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    if-eq v6, v7, :cond_12

    const/4 v3, 0x1

    :cond_12
    :goto_6
    if-eqz v3, :cond_15

    if-eqz v0, :cond_2a

    const-string v6, "46003"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    const-string v6, "46011"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    :cond_13
    packed-switch v2, :pswitch_data_1

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    :cond_14
    :goto_7
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getInitialProfiles()[Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendModemProfile([Lcom/android/internal/telephony/dataconnection/DataProfile;)V

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v7, "apnChanged"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->disconnectApnOnApnSelected(Ljava/lang/String;)V

    :cond_15
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> changeAPN : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> mPreferredApn : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v8, v8, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_16
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTWAP_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    goto/16 :goto_3

    :cond_17
    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTWAP_APN_ID:I

    if-ne v6, v7, :cond_18

    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTWAP_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    goto/16 :goto_3

    :cond_18
    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTNET_APN_ID:I

    if-ne v6, v7, :cond_d

    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTNET_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    goto/16 :goto_3

    :cond_19
    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_FOR_DATA_APN_ID:I

    if-eq v6, v7, :cond_1a

    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_FOR_DATA_APN_ID:I

    if-ne v6, v7, :cond_1b

    :cond_1a
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_LTE_NET_FOR_DATA_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->KDDI_ROAM_LTE_NET_FOR_DATA_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    goto/16 :goto_4

    :cond_1b
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    const-string v7, "<selectApn()> user setting APN"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_0
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> [1] IsRoaming: Roaming enabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_1c
    const-string v6, "45005"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    const-string v6, "45011"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    :cond_1d
    packed-switch v2, :pswitch_data_2

    :pswitch_1
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    :goto_8
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->featureset:Ljava/lang/String;

    const-string v7, "LGTBASE"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> For SKT USIM and U+ handset, setting Roaming_3G_APN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_2
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    goto :goto_8

    :pswitch_3
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    goto :goto_8

    :cond_1e
    const-string v6, "45006"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getLgDataFeature()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_LTE_ROAMING_LGU:Z

    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getLTEDataRoamingEnable()Z

    move-result v6

    if-eqz v6, :cond_1f

    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> IsRoaming: LTE Roaming enabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_1f
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> IsRoaming: W/G Roaming enabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_20
    packed-switch v2, :pswitch_data_3

    :pswitch_4
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    goto/16 :goto_5

    :pswitch_5
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    goto/16 :goto_5

    :pswitch_6
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    goto/16 :goto_5

    :cond_21
    iget v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    iput v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    goto/16 :goto_5

    :cond_22
    if-eqz v4, :cond_12

    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    if-eq v6, v7, :cond_12

    const/4 v3, 0x1

    goto/16 :goto_6

    :cond_23
    const-string v6, "Added_APN_failed"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    if-eqz v4, :cond_12

    iget v6, v4, Lcom/android/internal/telephony/dataconnection/DataProfile;->id:I

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Last_default_APN_ID:I

    if-le v6, v7, :cond_12

    const/4 v3, 0x1

    goto/16 :goto_6

    :pswitch_7
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto/16 :goto_7

    :cond_24
    const-string v6, "45005"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25

    const-string v6, "45011"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    :cond_25
    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> net.Is_LTERoaming_allowed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "net.Is_LTERoaming_allowed"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> NWmode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v2, :sswitch_data_0

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    :goto_9
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->featureset:Ljava/lang/String;

    const-string v7, "LGTBASE"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> For SKT USIM and U+ handset, setting Roaming_3G_APN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_check_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :sswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto :goto_9

    :sswitch_1
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto :goto_9

    :cond_26
    const-string v6, "45006"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getLgDataFeature()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_LTE_ROAMING_LGU:Z

    if-eqz v6, :cond_28

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getLTEDataRoamingEnable()Z

    move-result v6

    if-eqz v6, :cond_27

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> changeAPN, LTE Roaming = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_27
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> changeAPN, W/G Roaming = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_28
    sparse-switch v2, :sswitch_data_1

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto/16 :goto_7

    :sswitch_2
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto/16 :goto_7

    :sswitch_3
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto/16 :goto_7

    :cond_29
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto/16 :goto_7

    :cond_2a
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    sget-boolean v6, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_SELECT_CTC:Z

    if-eqz v6, :cond_2c

    const-string v6, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<selectApn()> mDct.getLTEDataEnable() == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getLTEDataEnable()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getLTEDataEnable()Z

    move-result v6

    if-eqz v6, :cond_2b

    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTLTE_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto/16 :goto_7

    :cond_2b
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto/16 :goto_7

    :cond_2c
    iget-object v6, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v7, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto/16 :goto_7

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_3
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public selectApnForLteOfCTC(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const-string v0, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<selectApnForLteOfCTC()> enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[LGE_DATA][ApnSelectionHandler] "

    const-string v1, "<selectApnForLteOfCTC()> LTE Roaming is not supported !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "[LGE_DATA][ApnSelectionHandler] "

    const-string v1, "<selectApnForLteOfCTC()> Here is ChinaMainland ! We can support LTE Data !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->CTC_CTLTE_APN_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    const-string v0, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<selectApnForLteOfCTC()> mPreferredApn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getInitialProfiles()[Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendModemProfile([Lcom/android/internal/telephony/dataconnection/DataProfile;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Domestic_APN_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto :goto_1
.end method

.method public selectApnForLteRoamingOfUplus(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<selectApnForLTERoamingOfUplus()> enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current NW is Domestic, return persist.radio.isroaming : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isRoamingOOS()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v2, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_LTE_APN_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getPreferredApn()Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<selectApnForLTERoamingOfUplus()> mPreferredApn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPreferredDp:Lcom/android/internal/telephony/dataconnection/DataProfile;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getInitialProfiles()[Lcom/android/internal/telephony/dataconnection/DataProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendModemProfile([Lcom/android/internal/telephony/dataconnection/DataProfile;)V

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v2, "apnChanged"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->disconnectApnOnApnSelected(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .local v0, "defaultContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_3

    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLTEDataOnRoamingChange(), state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "permFailCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApnsPermFailCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getWaitingApnsPermFailCount()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    const-string v2, "handleLTEDataOnRoamingChange(), trysetupdata"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onTrySetupData(Ljava/lang/String;)Z

    goto/16 :goto_0

    .end local v0    # "defaultContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v2, p0, Lcom/android/internal/telephony/lgdata/ApnSelectionHandler;->Roaming_3G_APN_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setPreferredApn(I)V

    goto/16 :goto_1

    .restart local v0    # "defaultContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_3
    const-string v1, "[LGE_DATA][ApnSelectionHandler] "

    const-string v2, "APN_TYPE_DEFAULT is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
