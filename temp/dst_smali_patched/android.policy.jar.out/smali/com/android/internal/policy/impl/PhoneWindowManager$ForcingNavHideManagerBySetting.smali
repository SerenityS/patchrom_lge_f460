.class Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForcingNavHideManagerBySetting"
.end annotation


# static fields
.field private static final ENABLED_HIDE_NAVIGATION_SEPARATOR:C = ':'

.field public static final TALKBACK_PREFERENCE_KEY:Ljava/lang/String; = "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"


# instance fields
.field private mAccountListenerAdded:Z

.field private mBootComplete:Z

.field mHideAppListSet:Ljava/util/HashSet;

.field private mIsAccessibilityEnabled:Z

.field private mIsGoogleLogedIn:Z

.field private mIsInitializeTalkbackState:Z

.field private mIsReadDB:Z

.field private mIsTalkbackEnabled:Z

.field public mLastNavHiddenState:Z

.field private mLastRunningPkgName:Ljava/lang/String;

.field private mNavHiddenBySetting:Z

.field private mPreUpdateNeeded:Z

.field private mPreUpdatedPkgName:Ljava/lang/String;

.field private final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private observer:Landroid/database/ContentObserver;

.field private talkbackObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mHideAppListSet:Ljava/util/HashSet;

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mNavHiddenBySetting:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsReadDB:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mBootComplete:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsAccessibilityEnabled:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsTalkbackEnabled:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsInitializeTalkbackState:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mAccountListenerAdded:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsGoogleLogedIn:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mPreUpdateNeeded:Z

    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mLastNavHiddenState:Z

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mLastRunningPkgName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mPreUpdatedPkgName:Ljava/lang/String;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->observer:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->talkbackObserver:Landroid/database/ContentObserver;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->initialCheckForAccounts()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsAccessibilityEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsGoogleLogedIn:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsGoogleLogedIn:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->readDB()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsReadDB:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->setTalkbackEnabled()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsTalkbackEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->checkAccessibilityEnabled()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->updateGoogleLogedInStatus()V

    return-void
.end method

.method private checkAccessibilityEnabled()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsTalkbackEnabled:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTouchExplorationEnabled:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsAccessibilityEnabled:Z

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initialCheckForAccounts()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .local v1, "accMngr":Landroid/accounts/AccountManager;
    const-string v3, "com.google"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .local v0, "accArray":[Landroid/accounts/Account;
    array-length v3, v0

    if-lt v3, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsGoogleLogedIn:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->updateGoogleLogedInStatus()V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readDB()V
    .locals 7

    .prologue
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_hide_navigation_apps"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "enableHideApp":Ljava/lang/String;
    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .local v0, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .local v1, "componentNameString":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mHideAppListSet:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v1    # "componentNameString":Ljava/lang/String;
    .end local v3    # "enableHideApp":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private setTalkbackEnabled()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enabled_accessibility_services"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsTalkbackEnabled:Z

    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsTalkbackEnabled:Z

    goto :goto_0
.end method

.method private updateGoogleLogedInStatus()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mAccountListenerAdded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->registerAccountsUpdateListener()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mAccountListenerAdded:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getLastRunningPkg()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mLastRunningPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreUpdatedPkg()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mPreUpdatedPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public isForcingNavHideState()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mNavHiddenBySetting:Z

    return v0
.end method

.method public isGoogleLogedIn()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsGoogleLogedIn:Z

    return v0
.end method

.method public isNavBarHidingWindow(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 8
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "pf"    # Landroid/graphics/Rect;
    .param p3, "df"    # Landroid/graphics/Rect;
    .param p4, "cf"    # Landroid/graphics/Rect;
    .param p5, "vf"    # Landroid/graphics/Rect;
    .param p6, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/16 v7, 0x7d4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsInitializeTalkbackState:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->setTalkbackEnabled()V

    const-string v4, "HideNav"

    const-string v5, "initialize talkback flag state"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsInitializeTalkbackState:Z

    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsReadDB:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->readDB()V

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsReadDB:Z

    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mBootComplete:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemReady:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v4, "enable_hide_navigation_apps"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v4, "enabled_accessibility_services"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->talkbackObserver:Landroid/database/ContentObserver;

    const/4 v6, -0x1

    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mBootComplete:Z

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mIsAccessibilityEnabled:Z

    if-eqz v4, :cond_4

    :cond_3
    :goto_0
    return v3

    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->isSplitStatus()Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1800(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_3

    iget v4, p6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d2

    if-ne v4, v5, :cond_5

    invoke-virtual {p6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LG_AppDrawer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v2, "HideNav"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this is app drawer related windows.. check nav frame = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mLastNavHiddenState:Z

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_6

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mLastNavHiddenState:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->isPreUpdateNeeded()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v7, :cond_3

    move v3, v2

    goto :goto_0

    :cond_6
    const-string v4, "com.android.providers.media"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "com.android.packageinstaller"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "android"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.internal"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mLastNavHiddenState:Z

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v7, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Floating:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->isPreUpdateNeeded()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_1
    move v3, v2

    goto/16 :goto_0

    :cond_9
    move v2, v3

    goto :goto_1

    :cond_a
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d0

    if-lt v4, v5, :cond_c

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mLastNavHiddenState:Z

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->isPreUpdateNeeded()Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_2
    move v3, v2

    goto/16 :goto_0

    :cond_b
    move v2, v3

    goto :goto_2

    :cond_c
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mHideAppListSet:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Floating:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget v3, p6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3eb

    if-ne v3, v4, :cond_d

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v3, :cond_e

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, p3, Landroid/graphics/Rect;->bottom:I

    iput v3, p4, Landroid/graphics/Rect;->bottom:I

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    :cond_d
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->setLastRunningPkg(Ljava/lang/String;)V

    move v3, v2

    goto/16 :goto_0

    :cond_e
    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, p3, Landroid/graphics/Rect;->right:I

    iput v3, p4, Landroid/graphics/Rect;->right:I

    iput v3, p2, Landroid/graphics/Rect;->right:I

    goto :goto_3
.end method

.method public isPreUpdateNeeded()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mPreUpdateNeeded:Z

    return v0
.end method

.method protected registerAccountsUpdateListener()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .local v0, "accMngr":Landroid/accounts/AccountManager;
    :try_start_0
    new-instance v3, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v3, "HideNav"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountsUpdateListener is already added? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mAccountListenerAdded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetForcingNavHide()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mNavHiddenBySetting:Z

    return-void
.end method

.method public setForcingNavHide()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mNavHiddenBySetting:Z

    return-void
.end method

.method public setLastRunningPkg(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mLastRunningPkgName:Ljava/lang/String;

    return-void
.end method

.method public setPreUpdateBeforeLayout(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mPreUpdateNeeded:Z

    return-void
.end method

.method public setPreUpdatedPkg(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ForcingNavHideManagerBySetting;->mPreUpdatedPkgName:Ljava/lang/String;

    return-void
.end method
