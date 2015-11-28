.class public final Lcom/android/internal/telephony/uicc/UsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "UsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "UsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 5
    .param p1, "efid"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 73
    sparse-switch p1, :sswitch_data_1

    .line 106
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "KT"

    aput-object v2, v1, v3

    const-string v2, "ATT"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "TMO"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "US"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->targetCountry([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    sparse-switch p1, :sswitch_data_2

    .line 126
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 131
    const-string v0, "3F007F105F3A"

    .line 133
    .end local v0    # "path":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v0

    .line 66
    :sswitch_0
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 70
    :sswitch_1
    const-string v0, "3F007F105F3A"

    goto :goto_0

    .line 94
    :sswitch_2
    const-string v0, "3F007FFF"

    goto :goto_0

    .line 98
    :sswitch_3
    const-string v0, "3F007F25"

    goto :goto_0

    .line 103
    :sswitch_4
    const-string v0, "3F007FFF5F3D"

    goto :goto_0

    .line 114
    :sswitch_5
    const-string v0, "3F007FFF5F3F"

    goto :goto_0

    .line 121
    :sswitch_6
    const-string v0, "3F007FFF5F50"

    goto :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_1
        0x6f11 -> :sswitch_0
        0x6f13 -> :sswitch_0
        0x6f14 -> :sswitch_0
        0x6f15 -> :sswitch_0
        0x6f16 -> :sswitch_0
        0x6f17 -> :sswitch_0
        0x6f18 -> :sswitch_0
        0x6f38 -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f3c -> :sswitch_0
        0x6f3e -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f46 -> :sswitch_0
        0x6f4b -> :sswitch_0
        0x6f4e -> :sswitch_0
        0x6f60 -> :sswitch_0
        0x6fad -> :sswitch_0
        0x6fc5 -> :sswitch_0
        0x6fc6 -> :sswitch_0
        0x6fc7 -> :sswitch_0
        0x6fc8 -> :sswitch_0
        0x6fc9 -> :sswitch_0
        0x6fca -> :sswitch_0
        0x6fcb -> :sswitch_0
        0x6fcd -> :sswitch_0
    .end sparse-switch

    .line 73
    :sswitch_data_1
    .sparse-switch
        0x2f24 -> :sswitch_2
        0x4f22 -> :sswitch_4
        0x4f2c -> :sswitch_3
        0x4f55 -> :sswitch_4
        0x6f07 -> :sswitch_2
        0x6f37 -> :sswitch_2
        0x6f42 -> :sswitch_2
        0x6f43 -> :sswitch_2
        0x6f49 -> :sswitch_2
        0x6f4e -> :sswitch_2
        0x6f56 -> :sswitch_2
        0x6f60 -> :sswitch_2
        0x6f61 -> :sswitch_2
        0x6f62 -> :sswitch_2
        0x6f73 -> :sswitch_2
        0x6f7b -> :sswitch_2
        0x6f7e -> :sswitch_2
    .end sparse-switch

    .line 107
    :sswitch_data_2
    .sparse-switch
        0x4f02 -> :sswitch_5
        0x4f03 -> :sswitch_5
        0x4f04 -> :sswitch_5
        0x4f07 -> :sswitch_5
        0x4f09 -> :sswitch_5
        0x4f81 -> :sswitch_6
        0x4f82 -> :sswitch_6
        0x4f83 -> :sswitch_6
        0x4f84 -> :sswitch_6
        0x4f85 -> :sswitch_6
        0x4f86 -> :sswitch_6
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 138
    const-string v0, "UsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 143
    const-string v0, "UsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method
