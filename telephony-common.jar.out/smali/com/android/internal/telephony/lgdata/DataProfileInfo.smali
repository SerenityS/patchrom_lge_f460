.class public final Lcom/android/internal/telephony/lgdata/DataProfileInfo;
.super Ljava/lang/Object;
.source "DataProfileInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "[LGE_DATA] "

.field public static final PROFILE_KDDI_ADMIN:I = 0x2

.field public static final PROFILE_KDDI_DEFAULT:I = 0x1

.field public static final PROFILE_KDDI_DUN:I = 0x4

.field public static final PROFILE_KDDI_IMS:I = 0x3

.field public static final PROFILE_KR_DEFAULT:I = 0x2

.field public static final PROFILE_KR_IMS:I = 0x1

.field public static final PROFILE_KR_INITIAL_ATTACH:I = 0x1

.field public static final VZW_DATA_PROFILE_ADMIN:I = 0x2

.field public static final VZW_DATA_PROFILE_DEFAULT:I = 0x3

.field public static final VZW_DATA_PROFILE_EMERGENCY:I = 0x6

.field public static final VZW_DATA_PROFILE_IMS:I = 0x1

.field public static final VZW_DATA_PROFILE_VZW800:I = 0x5

.field public static final VZW_DATA_PROFILE_VZWAPP:I = 0x4


# instance fields
.field public DATA_PROFILE_AUTH_PREF_PAP_CHAP_NOT_ALLOWED:I

.field public KT_LTE_IMS_APN:Ljava/lang/String;

.field private PDP_TYPE_IPV4:I

.field private PDP_TYPE_IPV4V6:I

.field private PDP_TYPE_IPV6:I

.field private PROFILE_ATT_DEFAULT:I

.field private PROFILE_ATT_EMERGENCY:I

.field private PROFILE_ATT_IMS:I

.field private PROFILE_CMCC_DEFAULT:I

.field private PROFILE_CMCC_IMS:I

.field private PROFILE_DEFAULT:I

.field private PROFILE_DUN:I

.field private PROFILE_EMERGENCY:I

.field private PROFILE_FOTA:I

.field private PROFILE_IMS:I

.field private PROFILE_INITIAL_ATTACH:I

.field private PROFILE_SPCS_DEFAULT:I

.field private PROFILE_SPCS_DUN:I

.field private PROFILE_SPCS_FOTA:I

.field private PROFILE_TMUS_DEFAULT:I

.field private PROFILE_TMUS_IMS:I

.field private PROFILE_USC_DEFAULT:I

.field private PROFILE_USC_IMS:I

.field private PROFILE_USC_USCAPP:I

.field private PROFILE_VZW800:I

.field private PROFILE_VZWAPP:I

.field private PROFILE_VZW_ADMIN:I

.field private PROFILE_VZW_DEFAULT:I

.field public SKT_LTE_IMS_APN:Ljava/lang/String;

.field public SKT_LTE_Roaming_APN:Ljava/lang/String;

.field public UPLUS_LTE_IMS_APN:Ljava/lang/String;

.field public apn:Ljava/lang/String;

.field public authType:I

.field public bearer:I

.field public ehrpdProfileId:I

.field public emergencyPDN:Z

.field public inactivityTimer:I

.field public isEnabled:Z

.field public maxconn:I

.field public maxconn_t:I

.field public password:Ljava/lang/String;

.field public pcscfNeeded:Z

.field public pdpType:I

.field public profileId:I

.field private roaming:Z

.field public triggerEsmInfoRequest:Z

.field public user:Ljava/lang/String;

.field public wait_time:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZIZIZZ)V
    .locals 1
    .param p1, "profileId"    # I
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "pdpType"    # Ljava/lang/String;
    .param p4, "authType"    # I
    .param p5, "user"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "pcscfNeeded"    # Z
    .param p8, "esmInfo"    # Z
    .param p9, "bearer"    # I
    .param p10, "emergencyPDN"    # Z
    .param p11, "inactivityTimer"    # I
    .param p12, "enabled"    # Z
    .param p13, "roaming"    # Z

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->DATA_PROFILE_AUTH_PREF_PAP_CHAP_NOT_ALLOWED:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4:I

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV6:I

    .line 43
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4V6:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_IMS:I

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_DEFAULT:I

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_FOTA:I

    .line 49
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_DUN:I

    .line 50
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW_ADMIN:I

    .line 60
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW_DEFAULT:I

    .line 61
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZWAPP:I

    .line 62
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW800:I

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DEFAULT:I

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_FOTA:I

    .line 67
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DUN:I

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_DEFAULT:I

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_IMS:I

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_DEFAULT:I

    .line 78
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_IMS:I

    .line 79
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_EMERGENCY:I

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_DEFAULT:I

    .line 84
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_IMS:I

    .line 85
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_USCAPP:I

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_DEFAULT:I

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_IMS:I

    .line 103
    const-string v0, "lte-roaming.sktelecom.com"

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->SKT_LTE_Roaming_APN:Ljava/lang/String;

    .line 104
    const-string v0, "ims"

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->SKT_LTE_IMS_APN:Ljava/lang/String;

    .line 105
    const-string v0, "ims.ktfwing.com"

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->KT_LTE_IMS_APN:Ljava/lang/String;

    .line 106
    const-string v0, "imsv6.lguplus.co.kr"

    iput-object v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->UPLUS_LTE_IMS_APN:Ljava/lang/String;

    .line 115
    iput p1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    .line 116
    iput-object p2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    .line 118
    iput-boolean p13, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->roaming:Z

    .line 120
    const-string v0, "IPV4V6"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4V6:I

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pdpType:I

    .line 129
    :goto_0
    iput p4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->authType:I

    .line 130
    iput-object p5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->user:Ljava/lang/String;

    .line 131
    iput-object p6, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->password:Ljava/lang/String;

    .line 132
    iput-boolean p7, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pcscfNeeded:Z

    .line 133
    iput-boolean p8, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->triggerEsmInfoRequest:Z

    .line 134
    iput p9, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->bearer:I

    .line 135
    iput-boolean p10, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->emergencyPDN:Z

    .line 136
    iput p11, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->inactivityTimer:I

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->getEhrpdProfileID()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->ehrpdProfileId:I

    .line 138
    iput-boolean p12, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->isEnabled:Z

    .line 140
    const/16 v0, 0x3ff

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxconn:I

    .line 141
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxconn_t:I

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->wait_time:I

    .line 144
    return-void

    .line 123
    :cond_0
    const-string v0, "IPV6"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV6:I

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pdpType:I

    goto :goto_0

    .line 127
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4:I

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pdpType:I

    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZIZIZZIII)V
    .locals 2
    .param p1, "profileId"    # I
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "pdpType"    # Ljava/lang/String;
    .param p4, "authType"    # I
    .param p5, "user"    # Ljava/lang/String;
    .param p6, "password"    # Ljava/lang/String;
    .param p7, "pcscfNeeded"    # Z
    .param p8, "esmInfo"    # Z
    .param p9, "bearer"    # I
    .param p10, "emergencyPDN"    # Z
    .param p11, "inactivityTimer"    # I
    .param p12, "enabled"    # Z
    .param p13, "roaming"    # Z
    .param p14, "maxconn"    # I
    .param p15, "maxconn_t"    # I
    .param p16, "wait_time"    # I

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->DATA_PROFILE_AUTH_PREF_PAP_CHAP_NOT_ALLOWED:I

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4:I

    .line 42
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV6:I

    .line 43
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4V6:I

    .line 45
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    .line 46
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_IMS:I

    .line 47
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_DEFAULT:I

    .line 48
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_FOTA:I

    .line 49
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_DUN:I

    .line 50
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    .line 59
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW_ADMIN:I

    .line 60
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW_DEFAULT:I

    .line 61
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZWAPP:I

    .line 62
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW800:I

    .line 65
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DEFAULT:I

    .line 66
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_FOTA:I

    .line 67
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DUN:I

    .line 69
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_DEFAULT:I

    .line 70
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_IMS:I

    .line 77
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_DEFAULT:I

    .line 78
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_IMS:I

    .line 79
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_EMERGENCY:I

    .line 83
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_DEFAULT:I

    .line 84
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_IMS:I

    .line 85
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_USCAPP:I

    .line 89
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_DEFAULT:I

    .line 90
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_IMS:I

    .line 103
    const-string v1, "lte-roaming.sktelecom.com"

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->SKT_LTE_Roaming_APN:Ljava/lang/String;

    .line 104
    const-string v1, "ims"

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->SKT_LTE_IMS_APN:Ljava/lang/String;

    .line 105
    const-string v1, "ims.ktfwing.com"

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->KT_LTE_IMS_APN:Ljava/lang/String;

    .line 106
    const-string v1, "imsv6.lguplus.co.kr"

    iput-object v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->UPLUS_LTE_IMS_APN:Ljava/lang/String;

    .line 152
    iput p1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    .line 153
    iput-object p2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    .line 155
    iput-boolean p13, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->roaming:Z

    .line 157
    const-string v1, "IPV4V6"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4V6:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pdpType:I

    .line 166
    :goto_0
    iput p4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->authType:I

    .line 167
    iput-object p5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->user:Ljava/lang/String;

    .line 168
    iput-object p6, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->password:Ljava/lang/String;

    .line 169
    iput-boolean p7, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pcscfNeeded:Z

    .line 170
    iput-boolean p8, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->triggerEsmInfoRequest:Z

    .line 171
    iput p9, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->bearer:I

    .line 172
    iput-boolean p10, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->emergencyPDN:Z

    .line 173
    iput p11, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->inactivityTimer:I

    .line 174
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->getEhrpdProfileID()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->ehrpdProfileId:I

    .line 175
    iput-boolean p12, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->isEnabled:Z

    .line 176
    const/4 v1, -0x1

    move/from16 v0, p14

    if-ne v0, v1, :cond_2

    const/16 v1, 0x3ff

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxconn:I

    .line 178
    :goto_1
    const/4 v1, -0x1

    move/from16 v0, p15

    if-ne v0, v1, :cond_3

    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxconn_t:I

    .line 180
    :goto_2
    const/4 v1, -0x1

    move/from16 v0, p16

    if-ne v0, v1, :cond_4

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->wait_time:I

    .line 182
    :goto_3
    return-void

    .line 160
    :cond_0
    const-string v1, "IPV6"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV6:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pdpType:I

    goto :goto_0

    .line 164
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pdpType:I

    goto :goto_0

    .line 177
    :cond_2
    move/from16 v0, p14

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxconn:I

    goto :goto_1

    .line 179
    :cond_3
    move/from16 v0, p15

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxconn_t:I

    goto :goto_2

    .line 181
    :cond_4
    move/from16 v0, p16

    iput v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->wait_time:I

    goto :goto_3
.end method

.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DataProfile;Z)V
    .locals 8
    .param p1, "dp"    # Lcom/android/internal/telephony/dataconnection/DataProfile;
    .param p2, "roaming"    # Z

    .prologue
    const/4 v7, 0x4

    const/4 v1, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->DATA_PROFILE_AUTH_PREF_PAP_CHAP_NOT_ALLOWED:I

    .line 41
    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4:I

    .line 42
    iput v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV6:I

    .line 43
    iput v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4V6:I

    .line 45
    iput v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    .line 46
    iput v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_IMS:I

    .line 47
    iput v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_DEFAULT:I

    .line 48
    iput v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_FOTA:I

    .line 49
    iput v7, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_DUN:I

    .line 50
    const/4 v5, 0x6

    iput v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    .line 59
    iput v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW_ADMIN:I

    .line 60
    iput v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW_DEFAULT:I

    .line 61
    iput v7, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZWAPP:I

    .line 62
    const/4 v5, 0x5

    iput v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW800:I

    .line 65
    iput v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DEFAULT:I

    .line 66
    iput v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_FOTA:I

    .line 67
    iput v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DUN:I

    .line 69
    iput v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_DEFAULT:I

    .line 70
    iput v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_IMS:I

    .line 77
    iput v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_DEFAULT:I

    .line 78
    iput v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_IMS:I

    .line 79
    iput v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_EMERGENCY:I

    .line 83
    iput v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_DEFAULT:I

    .line 84
    iput v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_IMS:I

    .line 85
    iput v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_USCAPP:I

    .line 89
    iput v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_DEFAULT:I

    .line 90
    iput v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_IMS:I

    .line 103
    const-string v5, "lte-roaming.sktelecom.com"

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->SKT_LTE_Roaming_APN:Ljava/lang/String;

    .line 104
    const-string v5, "ims"

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->SKT_LTE_IMS_APN:Ljava/lang/String;

    .line 105
    const-string v5, "ims.ktfwing.com"

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->KT_LTE_IMS_APN:Ljava/lang/String;

    .line 106
    const-string v5, "imsv6.lguplus.co.kr"

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->UPLUS_LTE_IMS_APN:Ljava/lang/String;

    .line 189
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->types:[Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->getModemProfileID([Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    .line 190
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->apn:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    .line 192
    iput-boolean p2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->roaming:Z

    .line 195
    if-eqz p2, :cond_5

    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->roamingProtocol:Ljava/lang/String;

    .line 197
    .local v0, "protocol":Ljava/lang/String;
    :goto_0
    const-string v5, "IPV4V6"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 198
    iget v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4V6:I

    iput v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pdpType:I

    .line 207
    :goto_1
    iget v5, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    .line 208
    iget v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->DATA_PROFILE_AUTH_PREF_PAP_CHAP_NOT_ALLOWED:I

    iput v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->authType:I

    .line 212
    :goto_2
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->user:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->user:Ljava/lang/String;

    .line 213
    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->password:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->password:Ljava/lang/String;

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->needPcscfAddrRequest()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pcscfNeeded:Z

    .line 216
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_IMS_SET_TO_DEFAULT_HIDDENMENU_ATT:Z

    if-eqz v5, :cond_1

    .line 217
    iget-boolean v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pcscfNeeded:Z

    if-nez v5, :cond_1

    .line 218
    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    const-string v6, "ims"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    const-string v6, "IMS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 219
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pcscfNeeded:Z

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->needTriggerEsmInfoRequest()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->triggerEsmInfoRequest:Z

    .line 225
    iget v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v6, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    if-ne v5, v6, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->emergencyPDN:Z

    .line 227
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    if-ne v1, v7, :cond_3

    .line 229
    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_EMERGENCY:I

    if-ne v1, v5, :cond_3

    .line 230
    iput-boolean v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->emergencyPDN:Z

    .line 234
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    if-ne v1, v2, :cond_9

    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    if-ne v1, v2, :cond_9

    .line 236
    iput v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->bearer:I

    .line 242
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->getInactivityTimer()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->inactivityTimer:I

    .line 244
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_APN_INACTIVETIEMR_SPRINT:Z

    if-eqz v1, :cond_4

    .line 245
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->inactivityTimer:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->inactivityTimer:I

    .line 248
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->getEhrpdProfileID()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->ehrpdProfileId:I

    .line 249
    iget-boolean v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->carrierEnabled:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->isEnabled:Z

    .line 252
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxconn:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxconn:I

    .line 253
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->maxconn_t:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxconn_t:I

    .line 254
    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->wait_time:I

    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->wait_time:I

    .line 257
    return-void

    .line 195
    .end local v0    # "protocol":Ljava/lang/String;
    :cond_5
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->protocol:Ljava/lang/String;

    goto/16 :goto_0

    .line 200
    .restart local v0    # "protocol":Ljava/lang/String;
    :cond_6
    const-string v5, "IPV6"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 201
    iget v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV6:I

    iput v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pdpType:I

    goto/16 :goto_1

    .line 204
    :cond_7
    iget v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PDP_TYPE_IPV4:I

    iput v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pdpType:I

    goto/16 :goto_1

    .line 210
    :cond_8
    iget v5, p1, Lcom/android/internal/telephony/dataconnection/DataProfile;->authType:I

    iput v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->authType:I

    goto/16 :goto_2

    .line 240
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->needEhrpdProfileUpdate()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v3

    :goto_4
    iput v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->bearer:I

    goto :goto_3

    :cond_a
    move v1, v4

    goto :goto_4
.end method


# virtual methods
.method public getEhrpdProfileID()I
    .locals 7

    .prologue
    const/16 v3, 0x65

    const/4 v6, 0x1

    const/16 v1, 0x68

    const/16 v2, 0x67

    const/16 v0, 0x66

    .line 568
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 569
    iget v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_IMS:I

    if-ne v4, v5, :cond_1

    .line 606
    :cond_0
    :goto_0
    return v0

    .line 571
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW_ADMIN:I

    if-ne v0, v4, :cond_2

    move v0, v1

    .line 572
    goto :goto_0

    .line 573
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW_DEFAULT:I

    if-ne v0, v1, :cond_3

    move v0, v2

    .line 574
    goto :goto_0

    .line 575
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZWAPP:I

    if-ne v0, v1, :cond_4

    move v0, v3

    .line 576
    goto :goto_0

    .line 577
    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW800:I

    if-ne v0, v1, :cond_a

    .line 578
    const/16 v0, 0x69

    goto :goto_0

    .line 581
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_7

    .line 582
    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    if-eq v3, v4, :cond_0

    .line 585
    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DEFAULT:I

    if-eq v3, v4, :cond_0

    .line 588
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_FOTA:I

    if-ne v0, v3, :cond_6

    move v0, v2

    .line 589
    goto :goto_0

    .line 591
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DUN:I

    if-ne v0, v2, :cond_a

    move v0, v1

    .line 592
    goto :goto_0

    .line 596
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_a

    .line 597
    iget v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    if-eq v4, v6, :cond_0

    .line 599
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_8

    move v0, v1

    .line 600
    goto :goto_0

    .line 601
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    move v0, v2

    .line 602
    goto :goto_0

    .line 603
    :cond_9
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    move v0, v3

    .line 604
    goto :goto_0

    .line 606
    :cond_a
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    add-int/lit8 v0, v0, 0x64

    goto :goto_0
.end method

.method public getInactivityTimer()I
    .locals 3

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 374
    .local v0, "inactivityTimer":I
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 398
    :goto_0
    :pswitch_0
    return v0

    .line 376
    :pswitch_1
    const/16 v0, 0x59f

    .line 377
    goto :goto_0

    .line 379
    :pswitch_2
    const/16 v0, 0xd98

    .line 380
    goto :goto_0

    .line 383
    :pswitch_3
    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_FOTA:I

    if-ne v1, v2, :cond_0

    .line 384
    const/16 v0, 0xf

    goto :goto_0

    .line 386
    :cond_0
    const/16 v0, 0x3c

    .line 388
    goto :goto_0

    .line 390
    :pswitch_4
    iget v1, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 391
    const/4 v0, 0x0

    goto :goto_0

    .line 393
    :cond_1
    const/16 v0, 0x3c

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getModemProfileID([Ljava/lang/String;)I
    .locals 6
    .param p1, "types"    # [Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 403
    if-eqz p1, :cond_0

    array-length v3, p1

    if-eqz v3, :cond_0

    const-string v3, "*"

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v3

    iget v3, v3, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    if-nez v3, :cond_2

    .line 405
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    .line 559
    :cond_1
    :goto_0
    return v0

    .line 409
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v3

    if-ne v3, v2, :cond_8

    .line 410
    const-string v1, "ims"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 411
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_IMS:I

    goto :goto_0

    .line 413
    :cond_3
    const-string v1, "admin"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 414
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW_ADMIN:I

    goto :goto_0

    .line 416
    :cond_4
    const-string v1, "default"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 417
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW_DEFAULT:I

    goto :goto_0

    .line 419
    :cond_5
    const-string v1, "vzwapp"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 420
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZWAPP:I

    goto :goto_0

    .line 422
    :cond_6
    const-string v1, "vzw800"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 423
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_VZW800:I

    goto :goto_0

    .line 425
    :cond_7
    const-string v1, "emergency"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    goto :goto_0

    .line 434
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_c

    .line 435
    const-string v1, "ia"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 436
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto :goto_0

    .line 438
    :cond_9
    const-string v1, "default"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 439
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DEFAULT:I

    goto :goto_0

    .line 441
    :cond_a
    const-string v1, "fota"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 442
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_FOTA:I

    goto :goto_0

    .line 444
    :cond_b
    const-string v1, "dun"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_SPCS_DUN:I

    goto/16 :goto_0

    .line 452
    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_f

    .line 453
    const-string v1, "ia"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 454
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0

    .line 456
    :cond_d
    const-string v1, "default"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 457
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_DEFAULT:I

    goto/16 :goto_0

    .line 459
    :cond_e
    const-string v1, "ims"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 460
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_IMS:I

    goto/16 :goto_0

    .line 466
    :cond_f
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v3

    if-ne v3, v5, :cond_14

    .line 467
    const-string v3, "default"

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "*"

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    move v0, v2

    .line 469
    goto/16 :goto_0

    .line 470
    :cond_11
    const-string v2, "admin"

    invoke-static {p1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 471
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 472
    :cond_12
    const-string v2, "ims"

    invoke-static {p1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 473
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 474
    :cond_13
    const-string v2, "dun"

    invoke-static {p1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 475
    goto/16 :goto_0

    .line 480
    :cond_14
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    if-ne v2, v1, :cond_18

    .line 481
    const-string v1, "ia"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 482
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0

    .line 484
    :cond_15
    const-string v1, "default"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 485
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_DEFAULT:I

    goto/16 :goto_0

    .line 487
    :cond_16
    const-string v1, "ims"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 488
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_IMS:I

    goto/16 :goto_0

    .line 490
    :cond_17
    const-string v1, "emergency"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_EMERGENCY:I

    goto/16 :goto_0

    .line 498
    :cond_18
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_1b

    .line 499
    const-string v1, "default"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 500
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_DEFAULT:I

    goto/16 :goto_0

    .line 502
    :cond_19
    const-string v1, "ims"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 503
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_IMS:I

    goto/16 :goto_0

    .line 505
    :cond_1a
    const-string v1, "usccapp"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 506
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_USC_USCAPP:I

    goto/16 :goto_0

    .line 513
    :cond_1b
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_1e

    .line 514
    const-string v1, "ia"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 515
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0

    .line 517
    :cond_1c
    const-string v1, "default"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 518
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_DEFAULT:I

    goto/16 :goto_0

    .line 520
    :cond_1d
    const-string v1, "ims"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_IMS:I

    goto/16 :goto_0

    .line 527
    :cond_1e
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_20

    .line 528
    const-string v1, "ia"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "default"

    invoke-static {p1, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    :cond_1f
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0

    .line 537
    :cond_20
    const-string v0, "ia"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 538
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0

    .line 540
    :cond_21
    const-string v0, "ims"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 541
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_IMS:I

    goto/16 :goto_0

    .line 543
    :cond_22
    const-string v0, "default"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 544
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v0

    if-ne v0, v5, :cond_24

    .line 546
    :cond_23
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0

    .line 549
    :cond_24
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_DEFAULT:I

    goto/16 :goto_0

    .line 552
    :cond_25
    const-string v0, "fota"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 553
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_FOTA:I

    goto/16 :goto_0

    .line 555
    :cond_26
    const-string v0, "emergency"

    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 556
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    goto/16 :goto_0

    .line 559
    :cond_27
    iget v0, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_INITIAL_ATTACH:I

    goto/16 :goto_0
.end method

.method public needEhrpdProfileUpdate()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 360
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v1

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1

    .line 368
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needPcscfAddrRequest()Z
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 262
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v0

    .line 265
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_3

    .line 267
    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_TMUS_IMS:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 270
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 272
    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_IMS:I

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_ATT_EMERGENCY:I

    if-ne v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 275
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    if-ne v2, v4, :cond_6

    .line 276
    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 277
    goto :goto_0

    .line 282
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_8

    .line 284
    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_CMCC_IMS:I

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    if-ne v2, v3, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    .line 287
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/lgdata/LgDataFeature;->MPDNset:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_EMERGENCY:I

    if-eq v2, v3, :cond_9

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_IMS:I

    if-eq v2, v3, :cond_9

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v2

    if-ne v2, v4, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    iget v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->PROFILE_DEFAULT:I

    if-ne v2, v3, :cond_0

    :cond_9
    move v0, v1

    .line 290
    goto :goto_0
.end method

.method public needTriggerEsmInfoRequest()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 297
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v1

    .line 302
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/internal/telephony/lgdata/LgDataFeature;->LGP_DATA_DATACONNECTION_USIM_MOBILITY:Z

    if-eqz v3, :cond_8

    .line 304
    const/4 v2, 0x0

    .line 305
    .local v2, "triggerEsmInfoRequestForMobility":I
    const-string v3, "ril.card_operator"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "networkOperator":Ljava/lang/String;
    const/4 v1, 0x0

    .line 308
    .local v1, "retval":Z
    const-string v3, "[LGE_DATA] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USIM Mobility] needTriggerEsmInfoRequest(), networkOperator["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], apn["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], roaming["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->roaming:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v3, "SKT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 312
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->SKT_LTE_IMS_APN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->SKT_LTE_Roaming_APN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 314
    :cond_2
    const-string v3, "[LGE_DATA] "

    const-string v4, "[USIM Mobility] [Domestic region]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v1, 0x0

    goto :goto_0

    .line 318
    :cond_3
    const-string v3, "[LGE_DATA] "

    const-string v4, "[USIM Mobility] Other cases, return true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v1, 0x1

    goto :goto_0

    .line 323
    :cond_4
    const-string v3, "KT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 325
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->KT_LTE_IMS_APN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->roaming:Z

    if-nez v3, :cond_5

    .line 326
    const-string v3, "[LGE_DATA] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USIM Mobility] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Operator, EsmInfoRequest returns false in domestic network with default APN."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 330
    :cond_5
    const-string v3, "[LGE_DATA] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USIM Mobility] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Operator, EsmInfoRequest returns true in other cases."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 335
    :cond_6
    const-string v3, "LGU"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->UPLUS_LTE_IMS_APN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->roaming:Z

    if-nez v3, :cond_7

    .line 338
    const-string v3, "[LGE_DATA] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USIM Mobility] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Operator, EsmInfoRequest returns false in domestic network with default APN."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 342
    :cond_7
    const-string v3, "[LGE_DATA] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[USIM Mobility] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Operator, EsmInfoRequest returns true in other cases."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 350
    .end local v0    # "networkOperator":Ljava/lang/String;
    .end local v1    # "retval":Z
    .end local v2    # "triggerEsmInfoRequestForMobility":I
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getInstance()Lcom/android/internal/telephony/lgdata/LgDataFeature;

    invoke-static {}, Lcom/android/internal/telephony/lgdata/LgDataFeature;->getFeatureSet()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->SKT_LTE_Roaming_APN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->roaming:Z

    if-nez v3, :cond_0

    .line 355
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 612
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[DataProfileInfo] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->profileId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->apn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pdpType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->authType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->pcscfNeeded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->triggerEsmInfoRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->bearer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->emergencyPDN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->inactivityTimer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->ehrpdProfileId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->isEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxconn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->maxconn_t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/lgdata/DataProfileInfo;->wait_time:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
