.class public Lcom/lge/uicc/MSimLGUiccService;
.super Lcom/lge/uicc/ILGUiccService$Stub;
.source "MSimLGUiccService.java"


# static fields
.field private static mUiccService:Lcom/lge/uicc/MSimLGUiccService;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/lge/uicc/ILGUiccService$Stub;-><init>()V

    .line 173
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MSimLGUiccService] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logd(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MSimLGUiccService] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public static setupService(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "cis"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 46
    sget-object v0, Lcom/lge/uicc/MSimLGUiccService;->mUiccService:Lcom/lge/uicc/MSimLGUiccService;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/lge/uicc/MSimLGUiccService;

    invoke-direct {v0}, Lcom/lge/uicc/MSimLGUiccService;-><init>()V

    sput-object v0, Lcom/lge/uicc/MSimLGUiccService;->mUiccService:Lcom/lge/uicc/MSimLGUiccService;

    .line 49
    :cond_0
    array-length v0, p1

    invoke-static {p0, v0}, Lcom/lge/uicc/LGUICC;->setContext(Landroid/content/Context;I)V

    .line 50
    invoke-static {p0, p1}, Lcom/lge/uicc/IccTools;->setContext(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 52
    const-string v0, "lguicc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 53
    const-string v0, "lguicc"

    sget-object v1, Lcom/lge/uicc/MSimLGUiccService;->mUiccService:Lcom/lge/uicc/MSimLGUiccService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 56
    :cond_1
    invoke-static {}, Lcom/lge/uicc/SimPhonebookService;->setup()V

    .line 57
    invoke-static {}, Lcom/lge/uicc/GenericIO;->setup()V

    .line 58
    invoke-static {}, Lcom/lge/uicc/IccRecordHandler;->setup()V

    .line 62
    invoke-static {}, Lcom/lge/uicc/IccStateHandler;->setup()V

    .line 65
    invoke-static {}, Lcom/lge/uicc/IccidHandler;->setup()V

    .line 67
    invoke-static {}, Lcom/lge/uicc/MSimIccSwapDialog;->setup()V

    .line 68
    invoke-static {}, Lcom/lge/uicc/IccHandlerCTC;->setup()V

    .line 71
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 138
    invoke-static {}, Lcom/lge/uicc/IccTools;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 139
    .local v0, "c":Landroid/content/Context;
    if-eqz v0, :cond_0

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v0, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const-string v7, "ro.build.type"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "user"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-boolean v7, Lcom/lge/uicc/LGUICC;->ENABLE_PRIVACY_LOG:Z

    if-nez v7, :cond_3

    :cond_2
    const-string v7, "#lguicc_dump"

    invoke-static {v7}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "yes"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 146
    .local v1, "can_dump":Z
    :goto_1
    array-length v7, p3

    if-lez v7, :cond_c

    .line 147
    const/4 v7, 0x0

    aget-object v2, p3, v7

    .line 148
    .local v2, "cmd":Ljava/lang/String;
    array-length v7, p3

    const/4 v8, 0x1

    if-le v7, v8, :cond_5

    const/4 v7, 0x1

    aget-object v5, p3, v7

    .line 149
    .local v5, "p1":Ljava/lang/String;
    :goto_2
    array-length v7, p3

    const/4 v8, 0x2

    if-le v7, v8, :cond_6

    const/4 v7, 0x2

    aget-object v6, p3, v7

    .line 150
    .local v6, "p2":Ljava/lang/String;
    :goto_3
    const-string v7, "all"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v1, :cond_7

    .line 151
    invoke-static {p1, p2, p3}, Lcom/lge/uicc/LGUICC;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 143
    .end local v1    # "can_dump":Z
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v5    # "p1":Ljava/lang/String;
    .end local v6    # "p2":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 148
    .restart local v1    # "can_dump":Z
    .restart local v2    # "cmd":Ljava/lang/String;
    :cond_5
    const-string v5, ""

    goto :goto_2

    .line 149
    .restart local v5    # "p1":Ljava/lang/String;
    :cond_6
    const-string v6, ""

    goto :goto_3

    .line 152
    .restart local v6    # "p2":Ljava/lang/String;
    :cond_7
    const-string v7, "setconf"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 153
    array-length v7, p3

    const/4 v8, 0x3

    if-le v7, v8, :cond_8

    const/4 v7, 0x3

    aget-object v7, p3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 154
    .local v4, "index":I
    :goto_4
    invoke-static {v5, v4, v6}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Z

    .line 155
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5, v4}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    .end local v4    # "index":I
    :cond_8
    const/4 v4, -0x1

    goto :goto_4

    .line 156
    :cond_9
    const-string v7, "setpref"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 157
    invoke-static {v5, v6}, Lcom/lge/uicc/LGUICC;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "{"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "}: {"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/lge/uicc/LGUICC;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    :cond_a
    const-string v7, "read"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 160
    invoke-static {v5}, Lcom/lge/uicc/EfUtils;->hexStringToInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/lge/uicc/IccRecordHandler;->read(I)[B

    move-result-object v3

    .line 161
    .local v3, "data":[B
    invoke-static {v3}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    .end local v3    # "data":[B
    :cond_b
    const-string v7, "update"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 163
    invoke-static {v5}, Lcom/lge/uicc/EfUtils;->hexStringToInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6}, Lcom/lge/uicc/EfUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/uicc/IccRecordHandler;->update(I[B)Z

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_0

    .line 168
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v5    # "p1":Ljava/lang/String;
    .end local v6    # "p2":Ljava/lang/String;
    :cond_c
    if-eqz v1, :cond_0

    .line 169
    invoke-static {p1, p2, p3}, Lcom/lge/uicc/LGUICC;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public genericIO(Ljava/lang/String;[B)[B
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "in"    # [B

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "genericIO: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/MSimLGUiccService;->logd(Ljava/lang/String;)V

    .line 103
    invoke-static {p1, p2}, Lcom/lge/uicc/GenericIO;->exchange(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "subid"    # I

    .prologue
    const/4 v0, 0x0

    .line 74
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :cond_1
    const-string v1, "pref."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    const-string v0, "pref."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_2
    invoke-static {p1, p2, v0}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public readIccRecord(I)[B
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 107
    const-string v0, "readIccRecord"

    invoke-static {v0}, Lcom/lge/uicc/MSimLGUiccService;->logd(Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Lcom/lge/uicc/IccRecordHandler;->read(I)[B

    move-result-object v0

    return-object v0
.end method

.method public readIccRecordAllToString(I)[Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 122
    const-string v0, "readIccRecordToString"

    invoke-static {v0}, Lcom/lge/uicc/MSimLGUiccService;->logd(Ljava/lang/String;)V

    .line 123
    invoke-static {p1}, Lcom/lge/uicc/IccRecordHandler;->readAllToString(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readIccRecordToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 117
    const-string v0, "readIccRecordToString"

    invoke-static {v0}, Lcom/lge/uicc/MSimLGUiccService;->logd(Ljava/lang/String;)V

    .line 118
    invoke-static {p1}, Lcom/lge/uicc/IccRecordHandler;->readToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestEnvelope(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "envName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestEnvelope: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/MSimLGUiccService;->logd(Ljava/lang/String;)V

    .line 134
    const-string v0, "FAIL"

    return-object v0
.end method

.method public setProperty(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "subid"    # I
    .param p3, "val"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 84
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v5, v6

    .line 98
    :goto_0
    return v5

    .line 87
    :cond_1
    const-string v7, "pref."

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 88
    const-string v6, "pref."

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p3}, Lcom/lge/uicc/LGUICC;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/String;

    const-string v7, "simpin_secure"

    aput-object v7, v0, v6

    const-string v7, "show_sim_pin_view"

    aput-object v7, v0, v5

    const/4 v5, 0x2

    const-string v7, "test"

    aput-object v7, v0, v5

    .line 93
    .local v0, "allowed":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v3, v1, v2

    .line 94
    .local v3, "k":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 95
    invoke-static {p1, p2, p3}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 93
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3    # "k":Ljava/lang/String;
    :cond_4
    move v5, v6

    .line 98
    goto :goto_0
.end method

.method public updateIccRecord(I[B)Z
    .locals 1
    .param p1, "efid"    # I
    .param p2, "dataBytes"    # [B

    .prologue
    .line 112
    const-string v0, "updateIccRecord"

    invoke-static {v0}, Lcom/lge/uicc/MSimLGUiccService;->logd(Ljava/lang/String;)V

    .line 113
    invoke-static {p1, p2}, Lcom/lge/uicc/IccRecordHandler;->update(I[B)Z

    move-result v0

    return v0
.end method

.method public updateIccRecordFromString(ILjava/lang/String;)Z
    .locals 1
    .param p1, "efid"    # I
    .param p2, "dataString"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string v0, "updateIccRecordFromString"

    invoke-static {v0}, Lcom/lge/uicc/MSimLGUiccService;->logd(Ljava/lang/String;)V

    .line 128
    invoke-static {p1, p2}, Lcom/lge/uicc/IccRecordHandler;->updateFromString(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method
