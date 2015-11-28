.class public Lcom/lge/cappuccino/EmojiUtil;
.super Ljava/lang/Object;
.source "EmojiUtil.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "EmojiUtil"

.field private static sEmojiUtil:Lcom/lge/cappuccino/IEmojiUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    invoke-static {}, Lcom/lge/cappuccino/EmojiUtil;->newInstance()Lcom/lge/cappuccino/IEmojiUtil;

    move-result-object v0

    sput-object v0, Lcom/lge/cappuccino/EmojiUtil;->sEmojiUtil:Lcom/lge/cappuccino/IEmojiUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lge/cappuccino/IEmojiUtil;
    .locals 1

    .prologue
    sget-object v0, Lcom/lge/cappuccino/EmojiUtil;->sEmojiUtil:Lcom/lge/cappuccino/IEmojiUtil;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/EmojiUtil;->newInstance()Lcom/lge/cappuccino/IEmojiUtil;

    move-result-object v0

    sput-object v0, Lcom/lge/cappuccino/EmojiUtil;->sEmojiUtil:Lcom/lge/cappuccino/IEmojiUtil;

    :cond_0
    sget-object v0, Lcom/lge/cappuccino/EmojiUtil;->sEmojiUtil:Lcom/lge/cappuccino/IEmojiUtil;

    return-object v0
.end method

.method private static newInstance()Lcom/lge/cappuccino/IEmojiUtil;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .local v3, "emojiUtil":Lcom/lge/cappuccino/IEmojiUtil;
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_EMOJI:Z

    if-eqz v4, :cond_0

    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/com.lge.emoji.jar"

    const-class v5, Lcom/lge/cappuccino/EmojiUtil;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .local v1, "cloader":Ljava/lang/ClassLoader;
    :try_start_0
    const-string v4, "com.lge.emoji.EmojiUtilInternal"

    const/4 v5, 0x1

    invoke-static {v4, v5, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "emojiUtil":Lcom/lge/cappuccino/IEmojiUtil;
    check-cast v3, Lcom/lge/cappuccino/IEmojiUtil;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "cloader":Ljava/lang/ClassLoader;
    .restart local v3    # "emojiUtil":Lcom/lge/cappuccino/IEmojiUtil;
    :cond_0
    :goto_0
    return-object v3

    .end local v3    # "emojiUtil":Lcom/lge/cappuccino/IEmojiUtil;
    .restart local v1    # "cloader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "EmojiUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Library loading failure: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .restart local v3    # "emojiUtil":Lcom/lge/cappuccino/IEmojiUtil;
    goto :goto_0
.end method
