.class public Lcom/lge/uicc/LGUiccManager;
.super Ljava/lang/Object;
.source "LGUiccManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGUICC"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static genericIO(Ljava/lang/String;[B)[B
    .locals 5
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "in"    # [B

    .prologue
    .line 118
    const/4 v1, 0x0

    .line 120
    .local v1, "out":[B
    :try_start_0
    invoke-static {}, Lcom/lge/uicc/LGUiccManager;->getUiccService()Lcom/lge/uicc/ILGUiccService;

    move-result-object v2

    .line 121
    .local v2, "service":Lcom/lge/uicc/ILGUiccService;
    if-nez v2, :cond_0

    .line 122
    const-string v3, "genericIO: fail to get service"

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    .line 123
    const/4 v3, 0x0

    .line 131
    .end local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :goto_0
    return-object v3

    .line 125
    .restart local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :cond_0
    invoke-interface {v2, p0, p1}, Lcom/lge/uicc/ILGUiccService;->genericIO(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .end local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :goto_1
    move-object v3, v1

    .line 131
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "genericIO: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "genericIO: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "subid"    # I
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v2, 0x0

    .line 56
    .local v2, "val":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/lge/uicc/LGUiccManager;->getUiccService()Lcom/lge/uicc/ILGUiccService;

    move-result-object v1

    .line 57
    .local v1, "service":Lcom/lge/uicc/ILGUiccService;
    if-nez v1, :cond_0

    .line 58
    const-string v3, "getProperty: fail to get service"

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    .line 71
    .end local v1    # "service":Lcom/lge/uicc/ILGUiccService;
    .end local p2    # "def":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 61
    .restart local v1    # "service":Lcom/lge/uicc/ILGUiccService;
    .restart local p2    # "def":Ljava/lang/String;
    :cond_0
    invoke-interface {v1, p0, p1}, Lcom/lge/uicc/ILGUiccService;->getProperty(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 67
    .end local v1    # "service":Lcom/lge/uicc/ILGUiccService;
    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProperty: not ready: key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProperty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 64
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProperty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_2
    move-object p2, v2

    .line 71
    goto :goto_0
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/lge/uicc/LGUiccManager;->getProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUiccService()Lcom/lge/uicc/ILGUiccService;
    .locals 1

    .prologue
    .line 328
    const-string v0, "lguicc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/ILGUiccService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/uicc/ILGUiccService;

    move-result-object v0

    return-object v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 332
    const-string v0, "LGUICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGUiccManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 336
    const-string v0, "LGUICC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGUiccManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void
.end method

.method public static readIccRecord(I)[B
    .locals 5
    .param p0, "efid"    # I

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, "dataBytes":[B
    :try_start_0
    invoke-static {}, Lcom/lge/uicc/LGUiccManager;->getUiccService()Lcom/lge/uicc/ILGUiccService;

    move-result-object v2

    .line 149
    .local v2, "service":Lcom/lge/uicc/ILGUiccService;
    if-nez v2, :cond_0

    .line 150
    const-string v3, "readIccRecord: fail to get service"

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    .line 151
    const/4 v3, 0x0

    .line 159
    .end local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :goto_0
    return-object v3

    .line 153
    .restart local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :cond_0
    invoke-interface {v2, p0}, Lcom/lge/uicc/ILGUiccService;->readIccRecord(I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .end local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :goto_1
    move-object v3, v0

    .line 159
    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readIccRecord: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 156
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readIccRecord: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static readIccRecordAllToString(I)[Ljava/lang/String;
    .locals 5
    .param p0, "efid"    # I

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 239
    .local v0, "allDataString":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/lge/uicc/LGUiccManager;->getUiccService()Lcom/lge/uicc/ILGUiccService;

    move-result-object v2

    .line 240
    .local v2, "service":Lcom/lge/uicc/ILGUiccService;
    if-nez v2, :cond_0

    .line 241
    const-string v3, "readIccRecordAllToString: fail to get service"

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    .line 242
    const/4 v3, 0x0

    .line 250
    .end local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :goto_0
    return-object v3

    .line 244
    .restart local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :cond_0
    invoke-interface {v2, p0}, Lcom/lge/uicc/ILGUiccService;->readIccRecordAllToString(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .end local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :goto_1
    move-object v3, v0

    .line 250
    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readIccRecordAllToString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 247
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 248
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readIccRecordAllToString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static readIccRecordToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "efid"    # I

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 211
    .local v0, "dataString":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/lge/uicc/LGUiccManager;->getUiccService()Lcom/lge/uicc/ILGUiccService;

    move-result-object v2

    .line 212
    .local v2, "service":Lcom/lge/uicc/ILGUiccService;
    if-nez v2, :cond_0

    .line 213
    const-string v3, "readIccRecordToString: fail to get service"

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    .line 214
    const/4 v3, 0x0

    .line 222
    .end local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :goto_0
    return-object v3

    .line 216
    .restart local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :cond_0
    invoke-interface {v2, p0}, Lcom/lge/uicc/ILGUiccService;->readIccRecordToString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .end local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :goto_1
    move-object v3, v0

    .line 222
    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readIccRecordToString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 219
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readIccRecordToString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static requestEnvelope(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "envName"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 310
    const-string v1, "FAIL"

    .line 312
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/lge/uicc/LGUiccManager;->getUiccService()Lcom/lge/uicc/ILGUiccService;

    move-result-object v3

    .line 313
    .local v3, "service":Lcom/lge/uicc/ILGUiccService;
    if-nez v3, :cond_0

    .line 314
    const-string v4, "requestEnvelope: fail to get service"

    invoke-static {v4}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    move-object v2, v1

    .line 323
    .end local v1    # "result":Ljava/lang/String;
    .end local v3    # "service":Lcom/lge/uicc/ILGUiccService;
    .local v2, "result":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 317
    .end local v2    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    .restart local v3    # "service":Lcom/lge/uicc/ILGUiccService;
    :cond_0
    invoke-interface {v3, p0, p1}, Lcom/lge/uicc/ILGUiccService;->requestEnvelope(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .end local v3    # "service":Lcom/lge/uicc/ILGUiccService;
    :goto_1
    move-object v2, v1

    .line 323
    .end local v1    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_0

    .line 318
    .end local v2    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestEnvelope: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 320
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestEnvelope: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setProperty(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "subid"    # I
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 96
    .local v1, "result":Z
    :try_start_0
    invoke-static {}, Lcom/lge/uicc/LGUiccManager;->getUiccService()Lcom/lge/uicc/ILGUiccService;

    move-result-object v2

    .line 97
    .local v2, "service":Lcom/lge/uicc/ILGUiccService;
    if-nez v2, :cond_0

    .line 98
    const-string v3, "setProperty: fail to get service"

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    .line 99
    const/4 v3, 0x0

    .line 107
    .end local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :goto_0
    return v3

    .line 101
    .restart local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :cond_0
    invoke-interface {v2, p0, p1, p2}, Lcom/lge/uicc/ILGUiccService;->setProperty(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .end local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :goto_1
    move v3, v1

    .line 107
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setProperty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 104
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setProperty: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/lge/uicc/LGUiccManager;->setProperty(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static updateIccRecord(I[B)Z
    .locals 5
    .param p0, "efid"    # I
    .param p1, "dataBytes"    # [B

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 177
    .local v1, "result":Z
    :try_start_0
    invoke-static {}, Lcom/lge/uicc/LGUiccManager;->getUiccService()Lcom/lge/uicc/ILGUiccService;

    move-result-object v2

    .line 178
    .local v2, "service":Lcom/lge/uicc/ILGUiccService;
    if-nez v2, :cond_0

    .line 179
    const-string v3, "updateIccRecord: fail to get service"

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    .line 180
    const/4 v3, 0x0

    .line 188
    .end local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :goto_0
    return v3

    .line 182
    .restart local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :cond_0
    invoke-interface {v2, p0, p1}, Lcom/lge/uicc/ILGUiccService;->updateIccRecord(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .end local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :goto_1
    move v3, v1

    .line 188
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIccRecord: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 185
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIccRecord: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static updateIccRecordFromString(ILjava/lang/String;)Z
    .locals 5
    .param p0, "efid"    # I
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 272
    const/4 v1, 0x0

    .line 274
    .local v1, "result":Z
    :try_start_0
    invoke-static {}, Lcom/lge/uicc/LGUiccManager;->getUiccService()Lcom/lge/uicc/ILGUiccService;

    move-result-object v2

    .line 275
    .local v2, "service":Lcom/lge/uicc/ILGUiccService;
    if-nez v2, :cond_0

    .line 276
    const-string v3, "updateIccRecordFromString: fail to get service"

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    .line 277
    const/4 v3, 0x0

    .line 285
    .end local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :goto_0
    return v3

    .line 279
    .restart local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :cond_0
    invoke-interface {v2, p0, p1}, Lcom/lge/uicc/ILGUiccService;->updateIccRecordFromString(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .end local v2    # "service":Lcom/lge/uicc/ILGUiccService;
    :goto_1
    move v3, v1

    .line 285
    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIccRecordFromString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 282
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateIccRecordFromString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/uicc/LGUiccManager;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method
