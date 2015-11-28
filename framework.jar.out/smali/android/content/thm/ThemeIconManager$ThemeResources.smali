.class Landroid/content/thm/ThemeIconManager$ThemeResources;
.super Ljava/lang/Object;
.source "ThemeIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/thm/ThemeIconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThemeResources"
.end annotation


# instance fields
.field private mCompatibility:Landroid/content/res/CompatibilityInfo;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mService:Landroid/content/thm/IThemeIconManager;

.field private mThemePackageInfo:Landroid/content/thm/ThemePackageInfo;

.field private mThemeRes:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method private getThemeIconManager()Landroid/content/thm/IThemeIconManager;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mService:Landroid/content/thm/IThemeIconManager;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mService:Landroid/content/thm/IThemeIconManager;

    .line 75
    :goto_0
    return-object v0

    .line 73
    :cond_0
    const-string/jumbo v0, "themeicon"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/thm/IThemeIconManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/thm/IThemeIconManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mService:Landroid/content/thm/IThemeIconManager;

    .line 75
    iget-object v0, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mService:Landroid/content/thm/IThemeIconManager;

    goto :goto_0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 152
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private peekResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemeRes:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemeRes:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "id"    # I
    .param p2, "density"    # I

    .prologue
    .line 192
    :try_start_0
    invoke-virtual {p0}, Landroid/content/thm/ThemeIconManager$ThemeResources;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 193
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz v0, :cond_1

    .line 194
    if-nez p2, :cond_0

    .line 195
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 201
    .end local v0    # "r":Landroid/content/res/Resources;
    :goto_0
    return-object v1

    .line 197
    .restart local v0    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 199
    .end local v0    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 201
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getPackageRedirectionMap(Ljava/lang/String;)Landroid/content/thm/ThemeIconRedirectionMap;
    .locals 3
    .param p1, "targetPackageName"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v2, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v2, Landroid/content/res/Configuration;->themePackage:Ljava/lang/String;

    .line 177
    .local v0, "themePackage":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/content/thm/ThemeIconManager$ThemeResources;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    :try_start_0
    invoke-direct {p0}, Landroid/content/thm/ThemeIconManager$ThemeResources;->getThemeIconManager()Landroid/content/thm/IThemeIconManager;

    move-result-object v1

    .line 180
    .local v1, "tm":Landroid/content/thm/IThemeIconManager;
    if-eqz v1, :cond_0

    .line 181
    invoke-interface {v1, v0, p1}, Landroid/content/thm/IThemeIconManager;->getPackageRedirectionMap(Ljava/lang/String;Ljava/lang/String;)Landroid/content/thm/ThemeIconRedirectionMap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 187
    .end local v0    # "themePackage":Ljava/lang/String;
    .end local v1    # "tm":Landroid/content/thm/IThemeIconManager;
    :goto_0
    return-object v2

    .line 183
    .restart local v0    # "themePackage":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 187
    .end local v0    # "themePackage":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 84
    iget-object v2, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemeRes:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemeRes:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources;

    move-object v6, v2

    .line 85
    .local v6, "existing":Landroid/content/res/Resources;
    :goto_0
    if-eqz v6, :cond_3

    .line 86
    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v5, v6

    .line 108
    :cond_0
    :goto_1
    return-object v5

    .end local v6    # "existing":Landroid/content/res/Resources;
    :cond_1
    move-object v6, v5

    .line 84
    goto :goto_0

    .line 89
    .restart local v6    # "existing":Landroid/content/res/Resources;
    :cond_2
    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->close()V

    .line 92
    :cond_3
    invoke-virtual {p0}, Landroid/content/thm/ThemeIconManager$ThemeResources;->getThemePackageInfo()Landroid/content/thm/ThemePackageInfo;

    move-result-object v7

    .line 93
    .local v7, "info":Landroid/content/thm/ThemePackageInfo;
    if-eqz v7, :cond_0

    .line 97
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V

    .line 98
    .local v1, "assets":Landroid/content/res/AssetManager;
    iget-object v2, v7, Landroid/content/thm/ThemePackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    new-instance v0, Landroid/content/res/Resources;

    iget-object v2, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v3, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mCompatibility:Landroid/content/res/CompatibilityInfo;

    invoke-direct/range {v0 .. v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V

    .line 107
    .local v0, "r":Landroid/content/res/Resources;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemeRes:Ljava/lang/ref/SoftReference;

    move-object v5, v0

    .line 108
    goto :goto_1
.end method

.method getThemePackageInfo()Landroid/content/thm/ThemePackageInfo;
    .locals 2

    .prologue
    .line 159
    iget-object v1, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemePackageInfo:Landroid/content/thm/ThemePackageInfo;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemePackageInfo:Landroid/content/thm/ThemePackageInfo;

    .line 171
    :goto_0
    return-object v1

    .line 162
    :cond_0
    iget-object v1, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->themePackage:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/content/thm/ThemeIconManager$ThemeResources;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    :try_start_0
    invoke-direct {p0}, Landroid/content/thm/ThemeIconManager$ThemeResources;->getThemeIconManager()Landroid/content/thm/IThemeIconManager;

    move-result-object v0

    .line 165
    .local v0, "tm":Landroid/content/thm/IThemeIconManager;
    if-eqz v0, :cond_1

    .line 166
    iget-object v1, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->themePackage:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/thm/IThemeIconManager;->getThemePackageInfo(Ljava/lang/String;)Landroid/content/thm/ThemePackageInfo;

    move-result-object v1

    iput-object v1, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemePackageInfo:Landroid/content/thm/ThemePackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v0    # "tm":Landroid/content/thm/IThemeIconManager;
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemePackageInfo:Landroid/content/thm/ThemePackageInfo;

    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method init(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 112
    iget-object v0, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mConfiguration:Landroid/content/res/Configuration;

    .line 114
    iget-object v0, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 115
    iput-object p2, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 116
    iput-object p3, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mCompatibility:Landroid/content/res/CompatibilityInfo;

    .line 118
    :cond_0
    return-void
.end method

.method updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 6
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    const/4 v5, 0x0

    .line 121
    iget-object v4, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v4, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v4, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v1

    .line 126
    .local v1, "changes":I
    iput-object p2, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 127
    iput-object p3, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mCompatibility:Landroid/content/res/CompatibilityInfo;

    .line 129
    const/high16 v4, 0x10000000

    and-int/2addr v4, v1

    if-eqz v4, :cond_4

    .line 130
    iget-object v4, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemeRes:Ljava/lang/ref/SoftReference;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemeRes:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/Resources;

    move-object v2, v4

    .line 131
    .local v2, "old":Landroid/content/res/Resources;
    :goto_1
    if-eqz v2, :cond_2

    .line 132
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 133
    .local v0, "assets":Landroid/content/res/AssetManager;
    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    .line 137
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    :cond_2
    iput-object v5, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemePackageInfo:Landroid/content/thm/ThemePackageInfo;

    .line 138
    iput-object v5, p0, Landroid/content/thm/ThemeIconManager$ThemeResources;->mThemeRes:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .end local v2    # "old":Landroid/content/res/Resources;
    :cond_3
    move-object v2, v5

    .line 130
    goto :goto_1

    .line 144
    :cond_4
    invoke-direct {p0}, Landroid/content/thm/ThemeIconManager$ThemeResources;->peekResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 145
    .local v3, "r":Landroid/content/res/Resources;
    if-eqz v3, :cond_0

    .line 146
    invoke-virtual {v3, p1, p2, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    goto :goto_0
.end method
