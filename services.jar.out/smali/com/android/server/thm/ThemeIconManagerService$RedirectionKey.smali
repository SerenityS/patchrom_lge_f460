.class final Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;
.super Ljava/lang/Object;
.source "ThemeIconManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/thm/ThemeIconManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RedirectionKey"
.end annotation


# instance fields
.field final targetPackageName:Ljava/lang/String;

.field final themePackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "themePackageName"    # Ljava/lang/String;
    .param p2, "targetPackageName"    # Ljava/lang/String;

    .prologue
    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    iput-object p1, p0, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;->themePackageName:Ljava/lang/String;

    .line 625
    iput-object p2, p0, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;->targetPackageName:Ljava/lang/String;

    .line 626
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 630
    if-ne p0, p1, :cond_1

    .line 653
    :cond_0
    :goto_0
    return v1

    .line 632
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 633
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 635
    check-cast v0, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;

    .line 637
    .local v0, "that":Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;
    iget-object v3, p0, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;->themePackageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 638
    iget-object v3, p0, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;->themePackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;->themePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 639
    goto :goto_0

    .line 641
    :cond_4
    iget-object v3, v0, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;->themePackageName:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 642
    goto :goto_0

    .line 645
    :cond_5
    iget-object v3, p0, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;->targetPackageName:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 646
    iget-object v3, p0, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;->targetPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 647
    goto :goto_0

    .line 649
    :cond_6
    iget-object v3, v0, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;->targetPackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 650
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 659
    iget-object v1, p0, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;->themePackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 660
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/server/thm/ThemeIconManagerService$RedirectionKey;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 661
    return v0
.end method
