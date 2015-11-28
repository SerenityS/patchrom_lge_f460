.class public final Lcom/lge/uicc/LGUICC;
.super Ljava/lang/Object;
.source "LGUICC.java"


# static fields
.field public static final ENABLE_PRIVACY_LOG:Z

.field public static final ENABLE_SMARTCARD_LOG:Z

.field public static final ENABLE_UICC_LOG:Z

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "lguicc"

.field private static SLOTS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LGUICC"

.field private static final TARGET_BUILD_TYPE:Ljava/lang/String;

.field private static final TARGET_COUNTRY:Ljava/lang/String;

.field private static final TARGET_OPERATOR:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mRegistrantsData:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/RegistrantList;",
            ">;"
        }
    .end annotation
.end field

.field private static mUiccData:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "ro.build.target_operator"

    const-string v3, "OPEN"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/uicc/LGUICC;->TARGET_OPERATOR:Ljava/lang/String;

    const-string v0, "ro.build.target_country"

    const-string v3, "COM"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/uicc/LGUICC;->TARGET_COUNTRY:Ljava/lang/String;

    const-string v0, "ro.build.type"

    const-string v3, "userdebug"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/uicc/LGUICC;->TARGET_BUILD_TYPE:Ljava/lang/String;

    const-string v3, "persist.service.privacy.enable"

    sget-object v0, Lcom/lge/uicc/LGUICC;->TARGET_OPERATOR:Ljava/lang/String;

    const-string v4, "TMO"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/lge/uicc/LGUICC;->TARGET_COUNTRY:Ljava/lang/String;

    const-string v4, "US"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/uicc/LGUICC;->ENABLE_PRIVACY_LOG:Z

    const-string v0, "persist.service.smartcardlog"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lge/uicc/LGUICC;->ENABLE_SMARTCARD_LOG:Z

    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "VZW"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/lge/uicc/LGUICC;->targetOperator([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v1

    :cond_1
    sput-boolean v2, Lcom/lge/uicc/LGUICC;->ENABLE_UICC_LOG:Z

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/lge/uicc/LGUICC;->mUiccData:Ljava/util/TreeMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/lge/uicc/LGUICC;->mRegistrantsData:Ljava/util/TreeMap;

    sput v1, Lcom/lge/uicc/LGUICC;->SLOTS:I

    return-void

    :cond_2
    sget-object v0, Lcom/lge/uicc/LGUICC;->TARGET_OPERATOR:Ljava/lang/String;

    const-string v4, "ATT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/lge/uicc/LGUICC;->TARGET_BUILD_TYPE:Ljava/lang/String;

    const-string v4, "user"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 13
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const-string v10, "LGUICC Config:"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v10, Lcom/lge/uicc/LGUICC;->mUiccData:Ljava/util/TreeMap;

    invoke-virtual {v10}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]: ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    array-length v10, p2

    if-eqz v10, :cond_1

    aget-object v10, p2, v12

    const-string v11, "all"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    return-void

    :cond_2
    const-string v10, "\nLGUICC Registrants:"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v10, Lcom/lge/uicc/LGUICC;->mRegistrantsData:Ljava/util/TreeMap;

    invoke-virtual {v10}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/RegistrantList;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/RegistrantList;

    .local v8, "rs":Landroid/os/RegistrantList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v8}, Landroid/os/RegistrantList;->size()I

    move-result v10

    if-ge v3, v10, :cond_3

    invoke-virtual {v8, v3}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Registrant;

    .local v6, "r":Landroid/os/Registrant;
    invoke-virtual {v6}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .local v2, "h":Landroid/os/Handler;
    if-eqz v2, :cond_5

    invoke-virtual {v6}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v5

    .local v5, "m":Landroid/os/Message;
    if-eqz v5, :cond_4

    iget-object v10, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v10, :cond_6

    :cond_4
    const-string v7, "*"

    .local v7, "regv":Ljava/lang/String;
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v5    # "m":Landroid/os/Message;
    .end local v7    # "regv":Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .restart local v5    # "m":Landroid/os/Message;
    :cond_6
    iget-object v10, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    move-object v7, v10

    goto :goto_2

    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/RegistrantList;>;"
    .end local v2    # "h":Landroid/os/Handler;
    .end local v3    # "i":I
    .end local v5    # "m":Landroid/os/Message;
    .end local v6    # "r":Landroid/os/Registrant;
    .end local v8    # "rs":Landroid/os/RegistrantList;
    :cond_7
    sget-object v10, Lcom/lge/uicc/LGUICC;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_1

    const-string v10, "\nLGUICC Preferences:"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v10, Lcom/lge/uicc/LGUICC;->mContext:Landroid/content/Context;

    const-string v11, "lguicc"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .local v9, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "{"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "}: {"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConfig(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .prologue
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const-class v4, Lcom/lge/uicc/LGUICC;

    monitor-enter v4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .end local p2    # "def":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit v4

    return-object p2

    .restart local p2    # "def":Ljava/lang/String;
    :cond_1
    if-gtz p1, :cond_2

    :try_start_1
    sget v3, Lcom/lge/uicc/LGUICC;->SLOTS:I

    if-eq v3, v6, :cond_3

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x23

    if-ne v3, v5, :cond_4

    :cond_3
    sget-object v3, Lcom/lge/uicc/LGUICC;->mUiccData:Ljava/util/TreeMap;

    invoke-virtual {v3, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object p2, v1

    goto :goto_0

    .end local v1    # "value":Ljava/lang/String;
    :cond_4
    if-ltz p1, :cond_0

    sget v3, Lcom/lge/uicc/LGUICC;->SLOTS:I

    if-le v3, v6, :cond_0

    sget-object v3, Lcom/lge/uicc/LGUICC;->mUiccData:Ljava/util/TreeMap;

    invoke-virtual {v3, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "values":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/lge/uicc/LGUICC;->splitValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "v":[Ljava/lang/String;
    array-length v3, v0

    if-ge p1, v3, :cond_0

    aget-object v1, v0, p1

    .restart local v1    # "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    move-object p2, v1

    goto :goto_0

    .end local v0    # "v":[Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "values":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    invoke-static {p0, v0, p1}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    sget-object v0, Lcom/lge/uicc/LGUICC;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/lge/uicc/LGUICC;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .end local p1    # "def":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "def":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/lge/uicc/LGUICC;->mContext:Landroid/content/Context;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreference: fails to get context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/lge/uicc/LGUICC;->mContext:Landroid/content/Context;

    const-string v2, "lguicc"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static joinValues([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "v"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    aget-object v2, p0, v3

    if-nez v2, :cond_1

    const-string v1, ""

    .local v1, "values":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x1

    .local v0, "n":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p0, v0

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "n":I
    .end local v1    # "values":Ljava/lang/String;
    :cond_1
    aget-object v1, p0, v3

    goto :goto_0

    .restart local v0    # "n":I
    .restart local v1    # "values":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "LGUICC"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "LGUICC"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logp(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/lge/uicc/LGUICC;->ENABLE_PRIVACY_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "LGUICC"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logs(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    sget-boolean v0, Lcom/lge/uicc/LGUICC;->ENABLE_SMARTCARD_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "LGUICC"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static notifyForConfig(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    sget-object v1, Lcom/lge/uicc/LGUICC;->mRegistrantsData:Ljava/util/TreeMap;

    invoke-virtual {v1, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RegistrantList;

    .local v0, "rs":Landroid/os/RegistrantList;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyForConfig: no registrants for key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/uicc/LGUICC;->logd(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static declared-synchronized registerForConfig(Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;)V
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "regValue"    # Ljava/lang/String;

    .prologue
    const-class v5, Lcom/lge/uicc/LGUICC;

    monitor-enter v5

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    monitor-exit v5

    return-void

    :cond_1
    :try_start_1
    sget-object v4, Lcom/lge/uicc/LGUICC;->mRegistrantsData:Ljava/util/TreeMap;

    invoke-virtual {v4, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RegistrantList;

    .local v1, "rs":Landroid/os/RegistrantList;
    if-nez v1, :cond_2

    new-instance v1, Landroid/os/RegistrantList;

    .end local v1    # "rs":Landroid/os/RegistrantList;
    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    .restart local v1    # "rs":Landroid/os/RegistrantList;
    sget-object v4, Lcom/lge/uicc/LGUICC;->mRegistrantsData:Ljava/util/TreeMap;

    invoke-virtual {v4, p0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, "r":Landroid/os/Registrant;
    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    sget-object v4, Lcom/lge/uicc/LGUICC;->mUiccData:Ljava/util/TreeMap;

    invoke-virtual {v4, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    .local v2, "slotId":I
    :goto_0
    sget v4, Lcom/lge/uicc/LGUICC;->SLOTS:I

    if-ge v2, v4, :cond_0

    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Lcom/lge/uicc/LGUICC;->getConfig(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "r":Landroid/os/Registrant;
    .end local v1    # "rs":Landroid/os/RegistrantList;
    .end local v2    # "slotId":I
    .end local v3    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static removeConfig(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Z

    return-void
.end method

.method public static removeConfig(Ljava/lang/String;I)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Z

    return-void
.end method

.method public static removePreference(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/uicc/LGUICC;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized setConfig(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 13
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "slotId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-class v10, Lcom/lge/uicc/LGUICC;

    monitor-enter v10

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    if-nez v11, :cond_2

    :cond_0
    move v8, v9

    :cond_1
    :goto_0
    monitor-exit v10

    return v8

    :cond_2
    if-gtz p1, :cond_3

    :try_start_1
    sget v11, Lcom/lge/uicc/LGUICC;->SLOTS:I

    if-eq v11, v8, :cond_4

    :cond_3
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x23

    if-ne v11, v12, :cond_8

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_6

    :cond_5
    sget-object v9, Lcom/lge/uicc/LGUICC;->mUiccData:Ljava/util/TreeMap;

    invoke-virtual {v9, p0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v10

    throw v8

    :cond_6
    :try_start_2
    sget-object v9, Lcom/lge/uicc/LGUICC;->mUiccData:Ljava/util/TreeMap;

    invoke-virtual {v9, p0, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    :goto_1
    sget-object v9, Lcom/lge/uicc/LGUICC;->mRegistrantsData:Ljava/util/TreeMap;

    invoke-virtual {v9, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RegistrantList;

    .local v4, "rs":Landroid/os/RegistrantList;
    if-eqz v4, :cond_1

    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v4}, Landroid/os/RegistrantList;->size()I

    move-result v5

    .local v5, "s":I
    :goto_2
    if-ge v0, v5, :cond_1

    invoke-virtual {v4, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Registrant;

    .local v2, "r":Landroid/os/Registrant;
    invoke-virtual {v2}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    if-nez v1, :cond_c

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "r":Landroid/os/Registrant;
    .end local v4    # "rs":Landroid/os/RegistrantList;
    .end local v5    # "s":I
    :cond_8
    if-ltz p1, :cond_b

    sget v11, Lcom/lge/uicc/LGUICC;->SLOTS:I

    if-le v11, v8, :cond_b

    sget-object v11, Lcom/lge/uicc/LGUICC;->mUiccData:Ljava/util/TreeMap;

    invoke-virtual {v11, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "values":Ljava/lang/String;
    invoke-static {v7}, Lcom/lge/uicc/LGUICC;->splitValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "v":[Ljava/lang/String;
    array-length v11, v6

    if-lt p1, v11, :cond_9

    move v8, v9

    goto :goto_0

    :cond_9
    aput-object p2, v6, p1

    invoke-static {v6}, Lcom/lge/uicc/LGUICC;->joinValues([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    array-length v11, v6

    if-ge v9, v11, :cond_a

    sget-object v9, Lcom/lge/uicc/LGUICC;->mUiccData:Ljava/util/TreeMap;

    invoke-virtual {v9, p0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_a
    sget-object v9, Lcom/lge/uicc/LGUICC;->mUiccData:Ljava/util/TreeMap;

    invoke-virtual {v9, p0, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v6    # "v":[Ljava/lang/String;
    .end local v7    # "values":Ljava/lang/String;
    :cond_b
    move v8, v9

    goto :goto_0

    .restart local v0    # "i":I
    .restart local v1    # "msg":Landroid/os/Message;
    .restart local v2    # "r":Landroid/os/Registrant;
    .restart local v4    # "rs":Landroid/os/RegistrantList;
    .restart local v5    # "s":I
    :cond_c
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .local v3, "regValue":Ljava/lang/String;
    if-eqz v3, :cond_d

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public static setConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    invoke-static {p0, v0, p1}, Lcom/lge/uicc/LGUICC;->setConfig(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static setContext(Landroid/content/Context;I)V
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "count"    # I

    .prologue
    if-lez p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-object p0, Lcom/lge/uicc/LGUICC;->mContext:Landroid/content/Context;

    sput p1, Lcom/lge/uicc/LGUICC;->SLOTS:I

    goto :goto_0
.end method

.method public static setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/lge/uicc/LGUICC;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreference: fails to get context : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/uicc/LGUICC;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/lge/uicc/LGUICC;->mContext:Landroid/content/Context;

    const-string v3, "lguicc"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_4
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private static splitValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "values"    # Ljava/lang/String;

    .prologue
    sget v6, Lcom/lge/uicc/LGUICC;->SLOTS:I

    new-array v5, v6, [Ljava/lang/String;

    .local v5, "v":[Ljava/lang/String;
    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .local v1, "n":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "start":I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_1

    if-ge v4, v3, :cond_1

    const/16 v6, 0x2c

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .local v0, "end":I
    if-gez v0, :cond_0

    move v0, v3

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "n":I
    .local v2, "n":I
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v4, v0, 0x1

    move v1, v2

    .end local v2    # "n":I
    .restart local v1    # "n":I
    goto :goto_0

    .end local v0    # "end":I
    .end local v1    # "n":I
    .end local v3    # "size":I
    .end local v4    # "start":I
    :cond_1
    return-object v5
.end method

.method public static varargs targetCountry([Ljava/lang/String;)Z
    .locals 5
    .param p0, "countries"    # [Ljava/lang/String;

    .prologue
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .local v1, "country":Ljava/lang/String;
    sget-object v4, Lcom/lge/uicc/LGUICC;->TARGET_COUNTRY:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .end local v1    # "country":Ljava/lang/String;
    :goto_1
    return v4

    .restart local v1    # "country":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "country":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static varargs targetOperator([Ljava/lang/String;)Z
    .locals 5
    .param p0, "operators"    # [Ljava/lang/String;

    .prologue
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, "operator":Ljava/lang/String;
    sget-object v4, Lcom/lge/uicc/LGUICC;->TARGET_OPERATOR:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .end local v3    # "operator":Ljava/lang/String;
    :goto_1
    return v4

    .restart local v3    # "operator":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "operator":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized unregisterForConfig(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    const-class v2, Lcom/lge/uicc/LGUICC;

    monitor-enter v2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    sget-object v1, Lcom/lge/uicc/LGUICC;->mRegistrantsData:Ljava/util/TreeMap;

    invoke-virtual {v1, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RegistrantList;

    .local v0, "rs":Landroid/os/RegistrantList;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/lge/uicc/LGUICC;->mRegistrantsData:Ljava/util/TreeMap;

    invoke-virtual {v1, p0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "rs":Landroid/os/RegistrantList;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
