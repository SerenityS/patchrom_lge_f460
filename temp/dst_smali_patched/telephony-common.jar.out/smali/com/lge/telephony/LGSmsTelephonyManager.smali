.class public Lcom/lge/telephony/LGSmsTelephonyManager;
.super Ljava/lang/Object;
.source "LGSmsTelephonyManager.java"


# static fields
.field public static final SPAM_RESULT:Ljava/lang/String; = "spam_result"

.field private static sLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v1, "/system/framework/com.lge.telephony.sms.jar"

    const-class v2, Lcom/lge/telephony/LGSmsTelephonyManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/lge/telephony/LGSmsTelephonyManager;->sLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;
    .locals 8
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "inbound"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p4, "pdus"    # [[B
    .param p5, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    :try_start_0
    const-string v5, "Gsm"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.lge.telephony.sms.gsm."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    sget-object v7, Lcom/lge/telephony/LGSmsTelephonyManager;->sLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const/4 v5, 0x5

    new-array v4, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/android/internal/telephony/InboundSmsHandler;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Lcom/android/internal/telephony/SmsMessageBase;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, [[B

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-class v6, Landroid/content/BroadcastReceiver;

    aput-object v6, v4, v5

    .local v4, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x5

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v0, v5

    const/4 v5, 0x1

    aput-object p2, v0, v5

    const/4 v5, 0x2

    aput-object p3, v0, v5

    const/4 v5, 0x3

    aput-object p4, v0, v5

    const/4 v5, 0x4

    aput-object p5, v0, v5

    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/telephony/SmsOperatorBasicMessage;

    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_1
    return-object v5

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.lge.telephony.sms.cdma."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    sget-object v7, Lcom/lge/telephony/LGSmsTelephonyManager;->sLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v1

    .restart local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .local v3, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v3}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v3

    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v3

    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;
    .locals 8
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "inbound"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "recipient"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    :try_start_0
    const-string v5, "Gsm"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.lge.telephony.sms.gsm."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    sget-object v7, Lcom/lge/telephony/LGSmsTelephonyManager;->sLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const/4 v5, 0x5

    new-array v4, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/android/internal/telephony/InboundSmsHandler;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-class v6, Landroid/content/BroadcastReceiver;

    aput-object v6, v4, v5

    .local v4, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x5

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v0, v5

    const/4 v5, 0x1

    aput-object p2, v0, v5

    const/4 v5, 0x2

    aput-object p3, v0, v5

    const/4 v5, 0x3

    aput-object p4, v0, v5

    const/4 v5, 0x4

    aput-object p5, v0, v5

    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/telephony/SmsOperatorBasicMessage;

    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_1
    return-object v5

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.lge.telephony.sms.cdma."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    sget-object v7, Lcom/lge/telephony/LGSmsTelephonyManager;->sLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v1

    .restart local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .local v3, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v3}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v3

    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v3

    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getOperatorMessage(Ljava/lang/String;[BLandroid/content/Context;Landroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;
    .locals 8
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "pdus"    # [B
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    :try_start_0
    const-string v5, "Gsm"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.lge.telephony.sms.gsm."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    sget-object v7, Lcom/lge/telephony/LGSmsTelephonyManager;->sLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, [B

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/content/BroadcastReceiver;

    aput-object v6, v4, v5

    .local v4, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x3

    new-array v0, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v0, v5

    const/4 v5, 0x1

    aput-object p2, v0, v5

    const/4 v5, 0x2

    aput-object p3, v0, v5

    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/telephony/SmsOperatorBasicMessage;

    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_1
    return-object v5

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.lge.telephony.sms.cdma."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    sget-object v7, Lcom/lge/telephony/LGSmsTelephonyManager;->sLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v1

    .restart local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .local v3, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v3}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v3

    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v3

    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getOperatorSpamMessage(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;
    .locals 6
    .param p0, "inbound"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p3, "pdus"    # [[B
    .param p4, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "SKTspam"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "GsmSmsSKTSpamMessage"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "LGUspam"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "CdmaSmsLGUSpamMessage"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "KTspam"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_2

    const-string v0, "GsmSmsKTSpamMessage"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "GLOBALspam"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_3

    const-string v0, "GsmSmsGlobalSpamMessage"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "GsmSmsKTSpamMessage"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;[[BLandroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    goto :goto_0
.end method

.method public static getOperatorSpamMessage(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;
    .locals 6
    .param p0, "inbound"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "recipient"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "SKTspam"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "GsmSmsSKTSpamMessage"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "LGUspam"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "CdmaSmsLGUSpamMessage"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "KTspam"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_2

    const-string v0, "GsmSmsKTSpamMessage"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "GLOBALspam"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_3

    const-string v0, "GsmSmsGlobalSpamMessage"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "GsmSmsKTSpamMessage"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    goto :goto_0
.end method

.method public static getOperatorSpamMessage([BLandroid/content/Context;Landroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;
    .locals 3
    .param p0, "pdus"    # [B
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "SKTspam"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    const-string v0, "GsmSmsSKTSpamMessage"

    invoke-static {v0, p0, p1, p2}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;[BLandroid/content/Context;Landroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "LGUspam"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v0, "CdmaSmsLGUSpamMessage"

    invoke-static {v0, p0, p1, p2}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;[BLandroid/content/Context;Landroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "KTspam"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_2

    const-string v0, "GsmSmsKTSpamMessage"

    invoke-static {v0, p0, p1, p2}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;[BLandroid/content/Context;Landroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "GLOBALspam"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_3

    const-string v0, "GsmSmsGlobalSpamMessage"

    invoke-static {v0, p0, p1, p2}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;[BLandroid/content/Context;Landroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "GsmSmsKTSpamMessage"

    invoke-static {v0, p0, p1, p2}, Lcom/lge/telephony/LGSmsTelephonyManager;->getOperatorMessage(Ljava/lang/String;[BLandroid/content/Context;Landroid/content/BroadcastReceiver;)Lcom/lge/telephony/SmsOperatorBasicMessage;

    move-result-object v0

    goto :goto_0
.end method
