.class public Lcom/lge/uicc/LGUiccService;
.super Lcom/lge/uicc/ILGUiccService$Stub;
.source "LGUiccService.java"


# static fields
.field private static mUiccService:Lcom/lge/uicc/LGUiccService;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/lge/uicc/ILGUiccService$Stub;-><init>()V

    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LGUiccService] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LGUiccService] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static setupService(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    sget-object v0, Lcom/lge/uicc/LGUiccService;->mUiccService:Lcom/lge/uicc/LGUiccService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lge/uicc/LGUiccService;

    invoke-direct {v0}, Lcom/lge/uicc/LGUiccService;-><init>()V

    sput-object v0, Lcom/lge/uicc/LGUiccService;->mUiccService:Lcom/lge/uicc/LGUiccService;

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/lge/uicc/LGUICC;->setContext(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/lge/uicc/IccTools;->setContext(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    const-string v0, "lguicc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "lguicc"

    sget-object v1, Lcom/lge/uicc/LGUiccService;->mUiccService:Lcom/lge/uicc/LGUiccService;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_1
    invoke-static {}, Lcom/lge/uicc/SimPhonebookService;->setup()V

    invoke-static {}, Lcom/lge/uicc/GenericIO;->setup()V

    invoke-static {}, Lcom/lge/uicc/IccRecordHandler;->setup()V

    invoke-static {}, Lcom/lge/uicc/EnvelopeHelper;->setup()V

    invoke-static {}, Lcom/lge/uicc/IccStateHandler;->setup()V

    invoke-static {}, Lcom/lge/uicc/IccRefreshHandler;->setup()V

    invoke-static {}, Lcom/lge/uicc/ImsiHandler;->setup()V

    invoke-static {}, Lcom/lge/uicc/IccidHandler;->setup()V

    invoke-static {}, Lcom/lge/uicc/IccRecordLoader;->setup()V

    invoke-static {}, Lcom/lge/uicc/IccSwapDialog;->setup()V

    invoke-static {}, Lcom/lge/uicc/IccHandlerVZW;->setup()V

    invoke-static {}, Lcom/lge/uicc/StartOtaHandler;->setup()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/lge/uicc/IccTools;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "c":Landroid/content/Context;
    if-eqz v0, :cond_0

    const-string v9, "android.permission.DUMP"

    invoke-virtual {v0, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v9, "ro.build.type"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "user"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-boolean v9, Lcom/lge/uicc/LGUICC;->ENABLE_PRIVACY_LOG:Z

    if-nez v9, :cond_3

    :cond_2
    const-string v9, "#lguicc_dump"

    invoke-static {v9}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "yes"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    const/4 v1, 0x1

    .local v1, "can_dump":Z
    :goto_1
    array-length v9, p3

    if-lez v9, :cond_10

    const/4 v9, 0x0

    aget-object v2, p3, v9

    .local v2, "cmd":Ljava/lang/String;
    array-length v9, p3

    const/4 v10, 0x1

    if-le v9, v10, :cond_5

    const/4 v9, 0x1

    aget-object v7, p3, v9

    .local v7, "p1":Ljava/lang/String;
    :goto_2
    array-length v9, p3

    const/4 v10, 0x2

    if-le v9, v10, :cond_6

    const/4 v9, 0x2

    aget-object v8, p3, v9

    .local v8, "p2":Ljava/lang/String;
    :goto_3
    const-string v9, "all"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v1, :cond_7

    invoke-static {p1, p2, p3}, Lcom/lge/uicc/LGUICC;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/lge/uicc/ImsiHandler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "can_dump":Z
    .end local v2    # "cmd":Ljava/lang/String;
    .end local v7    # "p1":Ljava/lang/String;
    .end local v8    # "p2":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .restart local v1    # "can_dump":Z
    .restart local v2    # "cmd":Ljava/lang/String;
    :cond_5
    const-string v7, ""

    goto :goto_2

    .restart local v7    # "p1":Ljava/lang/String;
    :cond_6
    const-string v8, ""

    goto :goto_3

    .restart local v8    # "p2":Ljava/lang/String;
    :cond_7
    const-string v9, "setconf"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    array-length v9, p3

    const/4 v10, 0x3

    if-le v9, v10, :cond_8

    const/4 v9, 0x3

    aget-object v9, p3, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .local v6, "index":I
    :goto_4
    invoke-static {v7, v6, v8}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7, v6}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v6    # "index":I
    :cond_8
    const/4 v6, -0x1

    goto :goto_4

    :cond_9
    const-string v9, "setpref"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static {v7, v8}, Lcom/lge/uicc/LGUICC;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "{"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "}: {"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Lcom/lge/uicc/LGUICC;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v9, "read"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-static {v7}, Lcom/lge/uicc/EfUtils;->hexStringToInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/lge/uicc/IccRecordHandler;->read(I)[B

    move-result-object v3

    .local v3, "data":[B
    invoke-static {v3}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "data":[B
    :cond_b
    const-string v9, "readAll"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-static {v7}, Lcom/lge/uicc/EfUtils;->hexStringToInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/lge/uicc/IccRecordHandler;->readAll(I)Ljava/util/ArrayList;

    move-result-object v4

    .local v4, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v4, :cond_0

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-static {v9}, Lcom/lge/uicc/EfUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .end local v4    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v5    # "i":I
    :cond_c
    const-string v9, "readToString"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {v7}, Lcom/lge/uicc/EfUtils;->hexStringToInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/lge/uicc/IccRecordHandler;->readToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v9, "readAllToString"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-static {v7}, Lcom/lge/uicc/EfUtils;->hexStringToInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/lge/uicc/IccRecordHandler;->readAllToString(I)[Ljava/lang/String;

    move-result-object v3

    .local v3, "data":[Ljava/lang/String;
    if-eqz v3, :cond_0

    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    array-length v9, v3

    if-ge v5, v9, :cond_0

    aget-object v9, v3, v5

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .end local v3    # "data":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_e
    const-string v9, "update"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-static {v7}, Lcom/lge/uicc/EfUtils;->hexStringToInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8}, Lcom/lge/uicc/EfUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/uicc/IccRecordHandler;->update(I[B)Z

    move-result v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_0

    :cond_f
    const-string v9, "envelope"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-static {v7, v8}, Lcom/lge/uicc/EnvelopeHelper;->request(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2    # "cmd":Ljava/lang/String;
    .end local v7    # "p1":Ljava/lang/String;
    .end local v8    # "p2":Ljava/lang/String;
    :cond_10
    if-eqz v1, :cond_0

    invoke-static {p1, p2, p3}, Lcom/lge/uicc/LGUICC;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public genericIO(Ljava/lang/String;[B)[B
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "in"    # [B

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "genericIO: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUiccService;->logd(Ljava/lang/String;)V

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

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "pref."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "pref."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, v0}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public readIccRecord(I)[B
    .locals 1
    .param p1, "efid"    # I

    .prologue
    const-string v0, "readIccRecord"

    invoke-static {v0}, Lcom/lge/uicc/LGUiccService;->logd(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/lge/uicc/IccRecordHandler;->read(I)[B

    move-result-object v0

    return-object v0
.end method

.method public readIccRecordAllToString(I)[Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    .prologue
    const-string v0, "readIccRecordToString"

    invoke-static {v0}, Lcom/lge/uicc/LGUiccService;->logd(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/lge/uicc/IccRecordHandler;->readAllToString(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readIccRecordToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    .prologue
    const-string v0, "readIccRecordToString"

    invoke-static {v0}, Lcom/lge/uicc/LGUiccService;->logd(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/lge/uicc/IccRecordHandler;->readToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestEnvelope(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "envName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
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

    invoke-static {v0}, Lcom/lge/uicc/LGUiccService;->logd(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/lge/uicc/EnvelopeHelper;->request(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v5, v6

    :goto_0
    return v5

    :cond_1
    const-string v7, "pref."

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v6, "pref."

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p3}, Lcom/lge/uicc/LGUICC;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/String;

    const-string v7, "simpin_secure"

    aput-object v7, v0, v6

    const-string v7, "ota_csim_refresh_status"

    aput-object v7, v0, v5

    const/4 v5, 0x2

    const-string v7, "test"

    aput-object v7, v0, v5

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

    .local v3, "k":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p1, p2, p3}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3    # "k":Ljava/lang/String;
    :cond_4
    move v5, v6

    goto :goto_0
.end method

.method public updateIccRecord(I[B)Z
    .locals 1
    .param p1, "efid"    # I
    .param p2, "dataBytes"    # [B

    .prologue
    const-string v0, "updateIccRecord"

    invoke-static {v0}, Lcom/lge/uicc/LGUiccService;->logd(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/lge/uicc/IccRecordHandler;->update(I[B)Z

    move-result v0

    return v0
.end method

.method public updateIccRecordFromString(ILjava/lang/String;)Z
    .locals 1
    .param p1, "efid"    # I
    .param p2, "dataString"    # Ljava/lang/String;

    .prologue
    const-string v0, "updateIccRecordFromString"

    invoke-static {v0}, Lcom/lge/uicc/LGUiccService;->logd(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/lge/uicc/IccRecordHandler;->updateFromString(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method
