.class public Lcom/vzw/location/server/VzwLocationManagerService;
.super Lcom/vzw/location/IVzwLocationManager$Stub;
.source "VzwLocationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/server/VzwLocationManagerService$1;,
        Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;,
        Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;,
        Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;,
        Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;,
        Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;,
        Lcom/vzw/location/server/VzwLocationManagerService$SettingsObserver;,
        Lcom/vzw/location/server/VzwLocationManagerService$VzwSmsFilterServiceConnection;
    }
.end annotation


# static fields
.field private static final ACCESS_COARSE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_COARSE_LOCATION"

.field private static final ACCESS_FINE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static final DEBUG:Z = true

.field private static final MESSAGE_LOCATION_CHANGED:I = 0x1

.field private static SMS_FILTER_DOMAIN:Ljava/lang/String; = null

.field private static SMS_FILTER_SERVICE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "VzwLocationManagerService"

.field private static final VERBOSE:Z = true

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "VzwLocationManagerService"

.field private static sProvidersLoaded:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;

.field private final mGeoFencerPackageName:Ljava/lang/String;

.field private mLocationHandler:Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;

.field private final mLock:Ljava/lang/Object;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingBroadcasts:I

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vzw/location/VzwLocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvidersByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vzw/location/VzwLocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mProximitiesEntered:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlert;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityGpsStatusListener:Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;

.field private mProximityListener:Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;

.field private mSettings:Landroid/content/ContentQueryMap;

.field private mVzwClient:Lcom/vzw/location/server/VzwClient;

.field private mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

.field private mVzwSmsReceiverService:Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;

.field private mVzwSmsReceiverServiceConn:Landroid/content/ServiceConnection;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private vzwProvider:Lcom/vzw/location/provider/VzwGpsLocationProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vzw/location/server/VzwLocationManagerService;->sProvidersLoaded:Z

    const-string v0, "com.lge.vzwsmsfilter"

    sput-object v0, Lcom/vzw/location/server/VzwLocationManagerService;->SMS_FILTER_DOMAIN:Ljava/lang/String;

    const-string v0, "SmsFilterService"

    sput-object v0, Lcom/vzw/location/server/VzwLocationManagerService;->SMS_FILTER_SERVICE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/vzw/location/IVzwLocationManager$Stub;-><init>()V

    iput-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencerPackageName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    const-string v0, "VzwLocationManagerService"

    const-string v1, "In VzwLocationManagerService class "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/vzw/location/provider/VzwGpsLocationProvider;

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;-><init>(Landroid/content/Context;Lcom/vzw/location/IVzwLocationManager;)V

    iput-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->vzwProvider:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    return-void
.end method

.method private _getAllProvidersLocked()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "VzwLocationManagerService"

    const-string v4, "[_getAllProvidersLocked]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwLocationProviderInterface;

    .local v1, "pi":Lcom/vzw/location/VzwLocationProviderInterface;
    invoke-interface {v1}, Lcom/vzw/location/VzwLocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "pi":Lcom/vzw/location/VzwLocationProviderInterface;
    :cond_0
    return-object v2
.end method

.method private _getProviderInfoLocked(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/VzwLocationProviderInterface;

    .local v1, "p":Lcom/vzw/location/VzwLocationProviderInterface;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService;->isProviderEnabled(Ljava/lang/String;)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "network"

    invoke-interface {v1}, Lcom/vzw/location/VzwLocationProviderInterface;->requiresNetwork()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "satellite"

    invoke-interface {v1}, Lcom/vzw/location/VzwLocationProviderInterface;->requiresSatellite()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "cell"

    invoke-interface {v1}, Lcom/vzw/location/VzwLocationProviderInterface;->requiresCell()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "cost"

    invoke-interface {v1}, Lcom/vzw/location/VzwLocationProviderInterface;->hasMonetaryCost()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "altitude"

    invoke-interface {v1}, Lcom/vzw/location/VzwLocationProviderInterface;->supportsAltitude()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "speed"

    invoke-interface {v1}, Lcom/vzw/location/VzwLocationProviderInterface;->supportsSpeed()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "bearing"

    invoke-interface {v1}, Lcom/vzw/location/VzwLocationProviderInterface;->supportsBearing()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "power"

    invoke-interface {v1}, Lcom/vzw/location/VzwLocationProviderInterface;->getPowerRequirement()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "accuracy"

    invoke-interface {v1}, Lcom/vzw/location/VzwLocationProviderInterface;->getAccuracy()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private _getProvidersLocked(Z)Ljava/util/List;
    .locals 4
    .param p1, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .local v1, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vzw/location/VzwLocationProviderInterface;

    .local v2, "p":Lcom/vzw/location/VzwLocationProviderInterface;
    invoke-interface {v2}, Lcom/vzw/location/VzwLocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v2    # "p":Lcom/vzw/location/VzwLocationProviderInterface;
    :cond_0
    return-object v1
.end method

.method private _isProviderEnabled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/vzw/location/server/VzwLocationManagerService;->checkCodeSignFromCaller()V

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwLocationProviderInterface;

    .local v0, "p":Lcom/vzw/location/VzwLocationProviderInterface;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private _loadProvidersLocked()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->vzwProvider:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vzw/location/provider/VzwGpsLocationProvider;

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/vzw/location/provider/VzwGpsLocationProvider;-><init>(Landroid/content/Context;Lcom/vzw/location/IVzwLocationManager;)V

    iput-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->vzwProvider:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    :cond_0
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->vzwProvider:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    invoke-direct {p0, v0}, Lcom/vzw/location/server/VzwLocationManagerService;->addProvider(Lcom/vzw/location/VzwLocationProviderInterface;)V

    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencerPackageName:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencerPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vzw/location/geofence/VzwGeoFenceProxy;->getGeoFencerProxy(Landroid/content/Context;Ljava/lang/String;)Lcom/vzw/location/geofence/VzwGeoFenceProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;

    :goto_0
    invoke-direct {p0}, Lcom/vzw/location/server/VzwLocationManagerService;->updateProvidersLocked()V

    return-void

    :cond_1
    const-string v0, "VzwLocationManagerService"

    const-string v1, "[_loadProvidersLocked] mGeoFencer = new CircleProximityAlerter()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vzw/location/server/VzwLocationManagerService$ProximityAlerter;-><init>(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwLocationManagerService$1;)V

    iput-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;)Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;
    .param p1, "x1"    # Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;

    .prologue
    iput-object p1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwSmsReceiverService:Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProximityGpsStatusListener:Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;)Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;
    .param p1, "x1"    # Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;

    .prologue
    iput-object p1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProximityGpsStatusListener:Lcom/vzw/location/server/VzwLocationManagerService$ProximityGpsStatusListener;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwClient;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClient:Lcom/vzw/location/server/VzwClient;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwClient;)Lcom/vzw/location/server/VzwClient;
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;
    .param p1, "x1"    # Lcom/vzw/location/server/VzwClient;

    .prologue
    iput-object p1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClient:Lcom/vzw/location/server/VzwClient;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/vzw/location/server/VzwLocationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vzw/location/server/VzwLocationManagerService;Ljava/lang/String;Lcom/vzw/location/VzwCriteria;ZLcom/vzw/location/ILocationListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/vzw/location/VzwCriteria;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Lcom/vzw/location/ILocationListener;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vzw/location/server/VzwLocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;ZLcom/vzw/location/ILocationListener;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/vzw/location/server/VzwLocationManagerService;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/geofence/VzwGeoFenceBase;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vzw/location/server/VzwLocationManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/vzw/location/server/VzwLocationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    invoke-direct {p0}, Lcom/vzw/location/server/VzwLocationManagerService;->incrementPendingBroadcasts()V

    return-void
.end method

.method static synthetic access$1900(Lcom/vzw/location/server/VzwLocationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    invoke-direct {p0}, Lcom/vzw/location/server/VzwLocationManagerService;->decrementPendingBroadcasts()V

    return-void
.end method

.method static synthetic access$500(Lcom/vzw/location/server/VzwLocationManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vzw/location/server/VzwLocationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    invoke-direct {p0}, Lcom/vzw/location/server/VzwLocationManagerService;->updateProvidersLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwClientManager;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vzw/location/server/VzwLocationManagerService;)Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;
    .locals 1
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;

    .prologue
    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProximityListener:Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;)Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;
    .locals 0
    .param p0, "x0"    # Lcom/vzw/location/server/VzwLocationManagerService;
    .param p1, "x1"    # Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;

    .prologue
    iput-object p1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProximityListener:Lcom/vzw/location/server/VzwLocationManagerService$ProximityListener;

    return-object p1
.end method

.method private addProvider(Lcom/vzw/location/VzwLocationProviderInterface;)V
    .locals 2
    .param p1, "pi"    # Lcom/vzw/location/VzwLocationProviderInterface;

    .prologue
    const-string v0, "VzwLocationManagerService"

    const-string v1, "[addProvider]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/vzw/location/VzwLocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addProximityAlertLocked(Lcom/vzw/location/geofence/VzwGeoFenceParams;)V
    .locals 3
    .param p1, "params"    # Lcom/vzw/location/geofence/VzwGeoFenceParams;

    .prologue
    const-string v0, "VzwLocationManagerService"

    const-string v1, "[addProximityAlertLocked] Entering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p1, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/vzw/location/server/VzwLocationManagerService;->checkPackageName(ILjava/lang/String;)V

    const-string v0, "gps"

    invoke-direct {p0, v0}, Lcom/vzw/location/server/VzwLocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "network"

    invoke-direct {p0, v0}, Lcom/vzw/location/server/VzwLocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "VzwLocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addProximityAlertLocked] Number of GeoFences before add = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;

    invoke-virtual {v2}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->getNumbOfGeoFences()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VzwLocationManagerService"

    const-string v1, "[addProximityAlertLocked] Add new GeoFence"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;

    invoke-virtual {v0, p1}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->add(Lcom/vzw/location/geofence/VzwGeoFenceParams;)V

    const-string v0, "VzwLocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addProximityAlertLocked] Number of GeoFences after add = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;

    invoke-virtual {v2}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->getNumbOfGeoFences()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private bindToSmsFilterService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwSmsReceiverService:Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwSmsReceiverServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwSmsReceiverService:Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;

    :cond_0
    new-instance v1, Lcom/vzw/location/server/VzwLocationManagerService$VzwSmsFilterServiceConnection;

    invoke-direct {v1, p0, v3}, Lcom/vzw/location/server/VzwLocationManagerService$VzwSmsFilterServiceConnection;-><init>(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwLocationManagerService$1;)V

    iput-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwSmsReceiverServiceConn:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/vzw/location/server/VzwLocationManagerService;->SMS_FILTER_DOMAIN:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/vzw/location/server/VzwLocationManagerService;->SMS_FILTER_DOMAIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vzw/location/server/VzwLocationManagerService;->SMS_FILTER_SERVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwSmsReceiverServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VzwLocationManagerService"

    const-string v2, "[bindToSmsFilterService] Binding failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v1, "VzwLocationManagerService"

    const-string v2, "[bindToSmsFilterService] Bound to SmsFilterService. Waiting for Service Connection."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkCodeSignFromCaller()V
    .locals 6

    .prologue
    new-instance v0, Lcom/vzw/location/server/VzwCodeSignChecker;

    invoke-direct {v0}, Lcom/vzw/location/server/VzwCodeSignChecker;-><init>()V

    .local v0, "mCodeChk":Lcom/vzw/location/server/VzwCodeSignChecker;
    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .local v2, "uid":I
    const-string v3, "VzwLocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[checkCodeSignFromCaller] PackageManager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1, v2}, Lcom/vzw/location/server/VzwCodeSignChecker;->isAppSignedWithValid(Landroid/content/pm/PackageManager;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "VzwLocationManagerService"

    const-string v4, "[checkCodeSignFromCaller] Code signature granted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Vzw Code Signature Verification Failed."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private checkPackageName(ILjava/lang/String;)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    if-nez p2, :cond_0

    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "packageName cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .local v3, "packages":[Ljava/lang/String;
    if-nez v3, :cond_1

    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4    # "pkg":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "invalid package name"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private decrementPendingBroadcasts()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mPendingBroadcasts:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mPendingBroadcasts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v1, "VzwLocationManagerService"

    const-string v3, "[decrementPendingBroadcasts] Released wakelock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_1
    :try_start_3
    const-string v1, "VzwLocationManagerService"

    const-string v3, "[decrementPendingBroadcasts] Can\'t release wakelock again!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "VzwLocationManagerService"

    const-string v3, "[decrementPendingBroadcasts] exception in releaseWakeLock()"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private incrementPendingBroadcasts()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mPendingBroadcasts:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mPendingBroadcasts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v1, "VzwLocationManagerService"

    const-string v3, "[incrementPendingBroadcasts] Acquired wakelock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VzwLocationManagerService"

    const-string v3, "[incrementPendingBroadcasts] exception in acquireWakeLock()"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initialize()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const-string v1, "VzwLocationManagerService"

    const-string v3, "Initialize of VzwLocationManagerService."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .local v6, "powerManager":Landroid/os/PowerManager;
    const-string v1, "VzwLocationManagerService"

    invoke-virtual {v6, v10, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Lcom/vzw/location/server/VzwClientManager;

    invoke-direct {v1, p0}, Lcom/vzw/location/server/VzwClientManager;-><init>(Lcom/vzw/location/server/VzwLocationManagerService;)V

    iput-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    const-string v1, "VzwLocationManagerService"

    const-string v3, "VzwClientManager is created."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/vzw/location/server/VzwLocationManagerService;->loadProviders()V

    invoke-direct {p0}, Lcom/vzw/location/server/VzwLocationManagerService;->bindToSmsFilterService()V

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v10, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "location_providers_allowed"

    aput-object v9, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, "settingsCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;

    invoke-direct {v1, v7, v3, v10, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mSettings:Landroid/content/ContentQueryMap;

    new-instance v8, Lcom/vzw/location/server/VzwLocationManagerService$SettingsObserver;

    invoke-direct {v8, p0, v2}, Lcom/vzw/location/server/VzwLocationManagerService$SettingsObserver;-><init>(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwLocationManagerService$1;)V

    .local v8, "settingsObserver":Lcom/vzw/location/server/VzwLocationManagerService$SettingsObserver;
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v8}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    return-void

    .end local v8    # "settingsObserver":Lcom/vzw/location/server/VzwLocationManagerService$SettingsObserver;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method private isAllowedBySettingsLocked(Ljava/lang/String;)Z
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "VzwLocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isAllowedBySettingsLocked] Setting Locked? result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isAllowedProviderSafe(Ljava/lang/String;)Z
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "gps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "passive"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v1, "network"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadProviders()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/vzw/location/server/VzwLocationManagerService;->sProvidersLoaded:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/vzw/location/server/VzwLocationManagerService;->loadProvidersLocked()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vzw/location/server/VzwLocationManagerService;->sProvidersLoaded:Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadProvidersLocked()V
    .locals 4

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/vzw/location/server/VzwLocationManagerService;->_loadProvidersLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VzwLocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load Providers. message="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerToSmsPrefixTable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fqan"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwSmsReceiverService:Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;

    if-nez v2, :cond_2

    const-string v2, "VzwLocationManagerService"

    const-string v3, "SMS Filter Service is not running..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "prefix"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "fqan"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwSmsReceiverService:Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;

    const-string v3, "transaction_on_database"

    invoke-interface {v2, v3, v0}, Lcom/vzw/smsfilter/IVzwSmsReceiverServiceInterface;->sendTransactionCommand(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private removeProximityAlertLocked(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const-string v0, "VzwLocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[removeProximityAlertLocked] Entering. Current number of GeoFences = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;

    invoke-virtual {v2}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->getNumbOfGeoFences()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VzwLocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[removeProximityAlertLocked] Remove a GeoFence with intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;

    invoke-virtual {v0, p1}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->remove(Landroid/app/PendingIntent;)V

    const-string v0, "VzwLocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[removeProximityAlertLocked] Number of GeoFences after removal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mGeoFencer:Lcom/vzw/location/geofence/VzwGeoFenceBase;

    invoke-virtual {v2}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->getNumbOfGeoFences()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private requestLocationUpdatesLocked(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;ZLcom/vzw/location/ILocationListener;)V
    .locals 11
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "criteria"    # Lcom/vzw/location/VzwCriteria;
    .param p3, "isSingleShot"    # Z
    .param p4, "listener"    # Lcom/vzw/location/ILocationListener;

    .prologue
    const-string v8, "VzwLocationManagerService"

    const-string v9, "[requestLocationUpdatesLocked] Inside of requestLocationUpdatesLocked()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vzw/location/VzwLocationProviderInterface;

    .local v7, "p":Lcom/vzw/location/VzwLocationProviderInterface;
    if-nez v7, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "provider="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .local v0, "callingPid":I
    const-string v8, "VzwLocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[requestLocationUpdatesLocked] CALLING UID: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    invoke-virtual {v8, v0, v1}, Lcom/vzw/location/server/VzwClientManager;->getVzwClient(II)Lcom/vzw/location/server/VzwClient;

    move-result-object v2

    .local v2, "client":Lcom/vzw/location/server/VzwClient;
    invoke-virtual {v2, p2}, Lcom/vzw/location/server/VzwClient;->setVzwCriteria(Lcom/vzw/location/VzwCriteria;)V

    iput-boolean p3, v2, Lcom/vzw/location/server/VzwClient;->isSingleShot:Z

    :try_start_0
    invoke-virtual {v2, p4}, Lcom/vzw/location/server/VzwClient;->addVzwGpsLocationListener(Lcom/vzw/location/ILocationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, "identity":J
    :try_start_1
    const-string v8, "VzwLocationManagerService"

    const-string v9, "[requestLocationUpdatesLocked] Check location settings and start."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v6

    .local v6, "isProviderEnabled":Z
    if-nez v6, :cond_1

    const-string v8, "VzwLocationManagerService"

    const-string v9, "[requestLocationUpdatesLocked] Setting is off. TURN ON SETTING TO CONTINUE"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/vzw/location/server/VzwClient;->getVzwGpsLocationListener()Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->callProviderEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v4    # "identity":J
    .end local v6    # "isProviderEnabled":Z
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "VzwLocationManagerService"

    const-string v9, "[requestLocationUpdatesLocked] Error while adding location listener binder."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v4    # "identity":J
    .restart local v6    # "isProviderEnabled":Z
    :cond_1
    if-nez p3, :cond_2

    :try_start_2
    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->getFixMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    const-string v8, "VzwLocationManagerService"

    const-string v9, "[requestLocationUpdatesLocked] MS-A only allows singleFix."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x14

    invoke-virtual {v2, v8}, Lcom/vzw/location/server/VzwClient;->reportOnGpsStatusChanged(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "GPS_EVENT_SET_FIX_RATE_FAIL"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v8, "VzwLocationManagerService"

    const-string v9, "[requestLocationUpdatesLocked] GPS_EVENT_SET_FIX_RATE_FAIL."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "isProviderEnabled":Z
    :catchall_0
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .restart local v6    # "isProviderEnabled":Z
    :cond_2
    :try_start_5
    iget-object v8, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    invoke-virtual {v8, v2}, Lcom/vzw/location/server/VzwClientManager;->startClient(Lcom/vzw/location/server/VzwClient;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private updateProviderListenersLocked(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    const-string v3, "VzwLocationManagerService"

    const-string v4, "[updateProviderListenersLocked] Start.."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vzw/location/VzwLocationProviderInterface;

    .local v2, "p":Lcom/vzw/location/VzwLocationProviderInterface;
    if-nez v2, :cond_0

    const-string v3, "VzwLocationManagerService"

    const-string v4, "[updateProviderListenersLocked] provider is Not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    iget-object v3, v3, Lcom/vzw/location/server/VzwClientManager;->mVzwClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/server/VzwClient;

    .local v0, "client":Lcom/vzw/location/server/VzwClient;
    iget-object v3, v0, Lcom/vzw/location/server/VzwClient;->mVzwGpsLocationListener:Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    invoke-virtual {v3, v0}, Lcom/vzw/location/server/VzwClientManager;->disposeIfClientDead(Lcom/vzw/location/server/VzwClient;)Z

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/vzw/location/server/VzwClient;->mVzwGpsLocationListener:Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;

    invoke-virtual {v3, p1, p2}, Lcom/vzw/location/server/VzwClient$VzwGpsLocationListener;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    goto :goto_1

    .end local v0    # "client":Lcom/vzw/location/server/VzwClient;
    :cond_2
    if-eqz p2, :cond_3

    const-string v3, "VzwLocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateProviderListenersLocked] enabling the provider["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/vzw/location/VzwLocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Lcom/vzw/location/VzwLocationProviderInterface;->enable()V

    goto :goto_0

    :cond_3
    const-string v3, "VzwLocationManagerService"

    const-string v4, "[updateProviderListenersLocked] disableLocationTracking"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v5, v5}, Lcom/vzw/location/VzwLocationProviderInterface;->enableLocationTracking(ZI)V

    invoke-interface {v2}, Lcom/vzw/location/VzwLocationProviderInterface;->disable()V

    goto :goto_0
.end method

.method private updateProvidersLocked()V
    .locals 8

    .prologue
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    const-string v5, "VzwLocationManagerService"

    const-string v6, "Providers are null, panic!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string v5, "VzwLocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total number of available providers: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vzw/location/VzwLocationProviderInterface;

    .local v3, "p":Lcom/vzw/location/VzwLocationProviderInterface;
    invoke-interface {v3}, Lcom/vzw/location/VzwLocationProviderInterface;->isEnabled()Z

    move-result v1

    .local v1, "isEnabled":Z
    invoke-interface {v3}, Lcom/vzw/location/VzwLocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, "name":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/vzw/location/server/VzwLocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v4

    .local v4, "shouldBeEnabled":Z
    const-string v5, "VzwLocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "****provider number["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] - with name ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] - shoud be enabled? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    if-nez v4, :cond_3

    const-string v5, "VzwLocationManagerService"

    const-string v6, "Provider is enabled, but Location Setting is disabled."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-direct {p0, v2, v5}, Lcom/vzw/location/server/VzwLocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_2

    if-eqz v4, :cond_2

    const-string v5, "VzwLocationManagerService"

    const-string v6, "Provider is not enabled and we force to enable it."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    invoke-direct {p0, v2, v5}, Lcom/vzw/location/server/VzwLocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    goto :goto_1
.end method


# virtual methods
.method public addProximityAlert(Lcom/vzw/location/geofence/VzwGeoFenceParams;)V
    .locals 4
    .param p1, "params"    # Lcom/vzw/location/geofence/VzwGeoFenceParams;

    .prologue
    const-string v1, "VzwLocationManagerService"

    const-string v2, "[addProximityAlert] Entering"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "vzw_lbs"

    invoke-virtual {p0, v1}, Lcom/vzw/location/server/VzwLocationManagerService;->isProviderEnabled(Ljava/lang/String;)Z

    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "VzwLocationManagerService"

    const-string v3, "[addProximityAlert] Calling addProximityAlertLocked()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService;->addProximityAlertLocked(Lcom/vzw/location/geofence/VzwGeoFenceParams;)V

    monitor-exit v2

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)Z
    .locals 8
    .param p1, "listener"    # Lcom/vzw/location/IVzwGpsStatusListener;

    .prologue
    const-string v5, "VzwLocationManagerService"

    const-string v6, "[addVzwGpsStatusListener] Entering."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    .local v3, "identity":J
    :try_start_1
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    invoke-virtual {v5, v0, v1}, Lcom/vzw/location/server/VzwClientManager;->getVzwClient(II)Lcom/vzw/location/server/VzwClient;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/vzw/location/server/VzwClient;->addVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "VzwLocationManagerService"

    const-string v7, "addVzwGpsStatusListener"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v5, 0x0

    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v6

    goto :goto_0

    .end local v0    # "callingPid":I
    .end local v1    # "callingUid":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "identity":J
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .restart local v0    # "callingPid":I
    .restart local v1    # "callingUid":I
    .restart local v3    # "identity":J
    :catchall_1
    move-exception v5

    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0}, Lcom/vzw/location/server/VzwLocationManagerService;->_getAllProvidersLocked()Ljava/util/List;

    move-result-object v2

    monitor-exit v3

    :goto_0
    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v1

    .local v1, "se":Ljava/lang/SecurityException;
    throw v1

    .end local v1    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VzwLocationManagerService"

    const-string v3, "getAllProviders got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBestProvider(Z)Ljava/lang/String;
    .locals 4
    .param p1, "enabledOnly"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "VzwLocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getBestProvider] enabledOnly = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string v1, "vzw_lbs"

    invoke-virtual {p0, v1}, Lcom/vzw/location/server/VzwLocationManagerService;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "VzwLocationManagerService"

    const-string v1, "[getBestProvider] return vzw_lbs."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "vzw_lbs"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "VzwLocationManagerService"

    const-string v2, "[getBestProvider] mVzwLocationProvider = null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService;->_getProviderInfoLocked(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    monitor-exit v4

    :goto_0
    return-object v3

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_0
    move-exception v2

    .local v2, "se":Ljava/lang/SecurityException;
    throw v2

    .end local v2    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    throw v1

    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VzwLocationManagerService"

    const-string v4, "_getProviderInfo got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getProviderStatus(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwLocationProviderInterface;

    .local v0, "p":Lcom/vzw/location/VzwLocationProviderInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/vzw/location/VzwLocationProviderInterface;->getStatus(Landroid/os/Bundle;)I

    move-result v1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 4
    .param p1, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v3, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService;->_getProvidersLocked(Z)Ljava/util/List;

    move-result-object v2

    monitor-exit v3

    :goto_0
    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v1

    .local v1, "se":Ljava/lang/SecurityException;
    throw v1

    .end local v1    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VzwLocationManagerService"

    const-string v3, "getProviders exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getStatusUpdateTime(Ljava/lang/String;)J
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwLocationProviderInterface;

    .local v0, "p":Lcom/vzw/location/VzwLocationProviderInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vzw/location/VzwLocationProviderInterface;->getStatusUpdateTime()J

    move-result-wide v1

    return-wide v1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService;->_isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    monitor-exit v4

    :goto_0
    return v3

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_0
    move-exception v2

    .local v2, "se":Ljava/lang/SecurityException;
    throw v2

    .end local v2    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    throw v1

    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VzwLocationManagerService"

    const-string v4, "[isProviderEnabled] Caught an exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const-string v3, "VzwLocationManagerService"

    const-string v4, "[removeProximityAlert] Entering"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v3, "VzwLocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[removeProximityAlert] Calling removeProximityAlertLocked("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService;->removeProximityAlertLocked(Landroid/app/PendingIntent;)V

    monitor-exit v4

    :goto_0
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_0
    move-exception v2

    .local v2, "se":Ljava/lang/SecurityException;
    throw v2

    .end local v2    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    throw v1

    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VzwLocationManagerService"

    const-string v4, "[removeProximityAlert] Exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeUpdates(Lcom/vzw/location/ILocationListener;)V
    .locals 10
    .param p1, "listener"    # Lcom/vzw/location/ILocationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v8, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .local v4, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .local v2, "identity":J
    :try_start_1
    iget-object v7, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    invoke-virtual {v7, v6, v4}, Lcom/vzw/location/server/VzwClientManager;->removeLocationListener(II)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catch_0
    move-exception v5

    .local v5, "se":Ljava/lang/SecurityException;
    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v5    # "se":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v7

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .end local v2    # "identity":J
    .end local v4    # "pid":I
    .end local v6    # "uid":I
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    .restart local v2    # "identity":J
    .restart local v4    # "pid":I
    .restart local v6    # "uid":I
    :catch_1
    move-exception v1

    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_5
    throw v1

    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "VzwLocationManagerService"

    const-string v9, "removeUpdates got exception:"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method

.method public removeVzwGpsStatusListener(Lcom/vzw/location/IVzwGpsStatusListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/vzw/location/IVzwGpsStatusListener;

    .prologue
    iget-object v6, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    .local v3, "identity":J
    :try_start_1
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    invoke-virtual {v5, v1, v0, p1}, Lcom/vzw/location/server/VzwClientManager;->removeStatusListener(IILcom/vzw/location/IVzwGpsStatusListener;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "VzwLocationManagerService"

    const-string v7, "mGpsStatusProvider.removeGpsStatusListener failed"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "callingPid":I
    .end local v1    # "callingUid":I
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "identity":J
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .restart local v0    # "callingPid":I
    .restart local v1    # "callingUid":I
    .restart local v3    # "identity":J
    :catchall_1
    move-exception v5

    :try_start_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public reportAllVzwGpsStatusChanged(I)V
    .locals 6
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    iget-object v5, v5, Lcom/vzw/location/server/VzwClientManager;->mVzwClients:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    const/4 v2, 0x0

    .local v2, "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/location/server/VzwClient;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/server/VzwClient;

    .local v0, "client":Lcom/vzw/location/server/VzwClient;
    invoke-virtual {v0, p1}, Lcom/vzw/location/server/VzwClient;->reportOnGpsStatusChanged(I)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/location/server/VzwClient;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/location/server/VzwClient;>;"
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "client":Lcom/vzw/location/server/VzwClient;
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "deadIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/server/VzwClient;

    .local v1, "deadClient":Lcom/vzw/location/server/VzwClient;
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    invoke-virtual {v5, v1}, Lcom/vzw/location/server/VzwClientManager;->disposeIfClientDead(Lcom/vzw/location/server/VzwClient;)Z

    goto :goto_1

    .end local v1    # "deadClient":Lcom/vzw/location/server/VzwClient;
    .end local v3    # "deadIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    :cond_3
    return-void
.end method

.method public reportGpsDeviceStatusChanged(Lcom/vzw/location/VzwGpsDeviceStatus;)V
    .locals 6
    .param p1, "deviceStatus"    # Lcom/vzw/location/VzwGpsDeviceStatus;

    .prologue
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    iget-object v5, v5, Lcom/vzw/location/server/VzwClientManager;->mVzwClients:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    const/4 v2, 0x0

    .local v2, "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/location/server/VzwClient;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/server/VzwClient;

    .local v0, "client":Lcom/vzw/location/server/VzwClient;
    invoke-virtual {v0, p1}, Lcom/vzw/location/server/VzwClient;->reportOnGpsDeviceStatusChanged(Lcom/vzw/location/VzwGpsDeviceStatus;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/location/server/VzwClient;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/location/server/VzwClient;>;"
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "client":Lcom/vzw/location/server/VzwClient;
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "deadIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/location/server/VzwClient;

    .local v1, "deadClient":Lcom/vzw/location/server/VzwClient;
    iget-object v5, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    invoke-virtual {v5, v1}, Lcom/vzw/location/server/VzwClientManager;->disposeIfClientDead(Lcom/vzw/location/server/VzwClient;)Z

    goto :goto_1

    .end local v1    # "deadClient":Lcom/vzw/location/server/VzwClient;
    .end local v3    # "deadIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    :cond_3
    return-void
.end method

.method public reportLocation(Landroid/location/Location;I)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const-string v1, "VzwLocationManagerService"

    const-string v2, "[reportLocation] sending the message. MESSAGE_LOCATION_CHANGED(1)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;

    invoke-virtual {v1, v3, p1}, Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;

    invoke-static {v1, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "m":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public reportSvStatusChanged(II[I[I[F[F[F)V
    .locals 12
    .param p1, "svCount"    # I
    .param p2, "svInViewCount"    # I
    .param p3, "prn"    # [I
    .param p4, "prnInView"    # [I
    .param p5, "elevInView"    # [F
    .param p6, "azimInView"    # [F
    .param p7, "snrInView"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    iget-object v1, v1, Lcom/vzw/location/server/VzwClientManager;->mVzwClients:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    const/4 v9, 0x0

    .local v9, "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/location/server/VzwClient;>;"
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/server/VzwClient;

    .local v0, "client":Lcom/vzw/location/server/VzwClient;
    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/vzw/location/server/VzwClient;->reportOnGpsSvStatusChanged(II[I[I[F[F[F)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v9, :cond_1

    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/location/server/VzwClient;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .restart local v9    # "deadClients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vzw/location/server/VzwClient;>;"
    :cond_1
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "client":Lcom/vzw/location/server/VzwClient;
    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "deadIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vzw/location/server/VzwClient;

    .local v8, "deadClient":Lcom/vzw/location/server/VzwClient;
    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    invoke-virtual {v1, v8}, Lcom/vzw/location/server/VzwClientManager;->disposeIfClientDead(Lcom/vzw/location/server/VzwClient;)Z

    goto :goto_1

    .end local v8    # "deadClient":Lcom/vzw/location/server/VzwClient;
    .end local v10    # "deadIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vzw/location/server/VzwClient;>;"
    :cond_3
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/ILocationListener;Z)V
    .locals 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "criteria"    # Lcom/vzw/location/VzwCriteria;
    .param p3, "listener"    # Lcom/vzw/location/ILocationListener;
    .param p4, "isSingleShot"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/vzw/location/server/VzwLocationManagerService;->isProviderEnabled(Ljava/lang/String;)Z

    :try_start_0
    iget-object v4, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v3, "VzwLocationManagerService"

    const-string v5, "[requestLocationUpdates] Let\'s requestLocationUpdates. Passed criteria."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "VzwLocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[requestLocationUpdates] provider = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "VzwLocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[requestLocationUpdates] VzwCriteria = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "VzwLocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[requestLocationUpdates] isSingleShot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/vzw/location/server/VzwLocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;ZLcom/vzw/location/ILocationListener;)V

    monitor-exit v4

    :goto_0
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_0
    move-exception v2

    .local v2, "se":Ljava/lang/SecurityException;
    throw v2

    .end local v2    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    throw v1

    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VzwLocationManagerService"

    const-string v4, "requestUpdates got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestStartNavigating(Ljava/lang/String;Lcom/vzw/location/VzwCriteria;Lcom/vzw/location/VzwGpsConfigInit;ZI)Z
    .locals 13
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "criteria"    # Lcom/vzw/location/VzwCriteria;
    .param p3, "config"    # Lcom/vzw/location/VzwGpsConfigInit;
    .param p4, "isFinalFix"    # Z
    .param p5, "sessionId"    # I

    .prologue
    const-string v10, "VzwLocationManagerService"

    const-string v11, "[requestStartNavigating] Entering."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vzw/location/VzwLocationProviderInterface;

    .local v5, "p":Lcom/vzw/location/VzwLocationProviderInterface;
    const/4 v8, 0x0

    .local v8, "result_setServer":Z
    const/4 v7, 0x0

    .local v7, "result_setCriteria":Z
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "extra":Landroid/os/Bundle;
    const-string v10, "VzwLocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[requestStartNavigating] criteria = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Lcom/vzw/location/VzwCriteria;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "criteria"

    invoke-virtual {v2, v10, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v11, "is_finalFix"

    if-eqz p4, :cond_0

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {v2, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "VzwLocationManagerService"

    const-string v11, "[requestStartNavigating] sendExtraCommand with set_provider_with_criteria"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_1

    const-string v10, "set_provider_with_criteria"

    invoke-interface {v5, v10, v2}, Lcom/vzw/location/VzwLocationProviderInterface;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v7

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "dataBundle":Landroid/os/Bundle;
    const-string v10, "configInit"

    move-object/from16 v0, p3

    invoke-virtual {v1, v10, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .local v6, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .local v9, "uid":I
    const-string v10, "VzwLocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[requestStartNavigating] PDI="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " | UID="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .local v3, "identity":J
    const-string v10, "pid"

    invoke-virtual {v1, v10, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "uid"

    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "set_up_server_info"

    invoke-interface {v5, v10, v1}, Lcom/vzw/location/VzwLocationProviderInterface;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v7, :cond_2

    const/4 v10, 0x1

    move/from16 v0, p5

    invoke-interface {v5, v10, v0}, Lcom/vzw/location/VzwLocationProviderInterface;->enableLocationTracking(ZI)V

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    const/4 v10, 0x1

    :goto_2
    return v10

    .end local v1    # "dataBundle":Landroid/os/Bundle;
    .end local v3    # "identity":J
    .end local v6    # "pid":I
    .end local v9    # "uid":I
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    new-instance v10, Ljava/lang/NullPointerException;

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v10

    .restart local v1    # "dataBundle":Landroid/os/Bundle;
    .restart local v3    # "identity":J
    .restart local v6    # "pid":I
    .restart local v9    # "uid":I
    :cond_2
    const-string v10, "VzwLocationManagerService"

    const-string v11, "[requestStartNavigating] Error ouccred while trying to enable LocationTracking"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    goto :goto_2
.end method

.method public requestStopNavigating()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "VzwLocationManagerService"

    const-string v2, "[requestStopNavigating] Start."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    const-string v2, "vzw_lbs"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/VzwLocationProviderInterface;

    .local v0, "p":Lcom/vzw/location/VzwLocationProviderInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0, v3, v3}, Lcom/vzw/location/VzwLocationProviderInterface;->enableLocationTracking(ZI)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
.end method

.method public run()V
    .locals 2

    .prologue
    const-string v0, "VzwLocationManagerService"

    const-string v1, "Inside thread call - run()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;-><init>(Lcom/vzw/location/server/VzwLocationManagerService;Lcom/vzw/location/server/VzwLocationManagerService$1;)V

    iput-object v0, p0, Lcom/vzw/location/server/VzwLocationManagerService;->mLocationHandler:Lcom/vzw/location/server/VzwLocationManagerService$LocationWorkerHandler;

    :cond_0
    invoke-direct {p0}, Lcom/vzw/location/server/VzwLocationManagerService;->initialize()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public setVzwGpsConfigInit(Ljava/lang/String;Lcom/vzw/location/VzwGpsConfigInit;)Z
    .locals 17
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "configInit"    # Lcom/vzw/location/VzwGpsConfigInit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .local v4, "isSet":Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "setVzeGpsConfigInt-params"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .local v11, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .local v13, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "identity":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vzw/location/server/VzwLocationManagerService;->mVzwClientManager:Lcom/vzw/location/server/VzwClientManager;

    invoke-virtual {v14, v11, v13}, Lcom/vzw/location/server/VzwClientManager;->getVzwClient(II)Lcom/vzw/location/server/VzwClient;

    move-result-object v5

    .local v5, "mClient":Lcom/vzw/location/server/VzwClient;
    move-object/from16 v6, p2

    .local v6, "mConfigInit":Lcom/vzw/location/VzwGpsConfigInit;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vzw/location/server/VzwLocationManagerService;->vzwProvider:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    iget v14, v14, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mServerType:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/vzw/location/VzwGpsConfigInit;->getSmsPrefixInfo()Ljava/lang/String;

    move-result-object v12

    .local v12, "smsPrefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/vzw/location/VzwGpsConfigInit;->getFullyQualifiedAppName()Ljava/lang/String;

    move-result-object v1

    .local v1, "fqan":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1}, Lcom/vzw/location/server/VzwLocationManagerService;->registerToSmsPrefixTable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "VzwLocationManagerService"

    const-string v15, "[setVzwGpsConfigInit] SMS filter registration successfully done."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :goto_0
    const-string v14, "VzwLocationManagerService"

    const-string v15, "[setVzwGpsConfigInit] Network authorization start"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    .local v9, "modeOperator":Lcom/vzw/location/server/VzwModeOperator;
    const/4 v7, 0x0

    .local v7, "mNetworkInfo":Lcom/vzw/location/server/VzwModeNetworkInfo;
    const/4 v8, 0x0

    .local v8, "mNetworkPermission":Z
    new-instance v10, Lcom/vzw/location/server/VzwModeDeterminer;

    move-object/from16 v0, p1

    invoke-direct {v10, v6, v0}, Lcom/vzw/location/server/VzwModeDeterminer;-><init>(Lcom/vzw/location/VzwGpsConfigInit;Ljava/lang/String;)V

    .local v10, "modeSelector":Lcom/vzw/location/server/VzwModeDeterminer;
    invoke-virtual {v10}, Lcom/vzw/location/server/VzwModeDeterminer;->convertMode()Lcom/vzw/location/server/VzwModeOperator;

    move-result-object v9

    if-nez v9, :cond_3

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Before converting, init error."

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .end local v7    # "mNetworkInfo":Lcom/vzw/location/server/VzwModeNetworkInfo;
    .end local v8    # "mNetworkPermission":Z
    .end local v9    # "modeOperator":Lcom/vzw/location/server/VzwModeOperator;
    .end local v10    # "modeSelector":Lcom/vzw/location/server/VzwModeDeterminer;
    :cond_2
    const-string v14, "VzwLocationManagerService"

    const-string v15, "[setVzwGpsConfigInit] SMS filter registration failed."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/16 v14, 0x1a

    invoke-virtual {v5, v14}, Lcom/vzw/location/server/VzwClient;->reportOnGpsStatusChanged(I)Z

    goto :goto_0

    .restart local v7    # "mNetworkInfo":Lcom/vzw/location/server/VzwModeNetworkInfo;
    .restart local v8    # "mNetworkPermission":Z
    .restart local v9    # "modeOperator":Lcom/vzw/location/server/VzwModeOperator;
    .restart local v10    # "modeSelector":Lcom/vzw/location/server/VzwModeDeterminer;
    :cond_3
    invoke-virtual {v9}, Lcom/vzw/location/server/VzwModeOperator;->verifyModeAccesibility()Z

    move-result v8

    const-string v14, "VzwLocationManagerService"

    const-string v15, "[setVzwGpsConfigInit] Network authorization end"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_4

    const/4 v14, 0x3

    invoke-virtual {v5, v14}, Lcom/vzw/location/server/VzwClient;->reportOnGpsStatusChanged(I)Z

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Network authorization failed."

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_4
    invoke-virtual {v9}, Lcom/vzw/location/server/VzwModeOperator;->getNetworkInfo()Lcom/vzw/location/server/VzwModeNetworkInfo;

    move-result-object v7

    iget-object v14, v7, Lcom/vzw/location/server/VzwModeNetworkInfo;->mMpcHost:Ljava/net/InetAddress;

    iget v15, v7, Lcom/vzw/location/server/VzwModeNetworkInfo;->mMpcHostPort:I

    invoke-virtual {v6, v14, v15}, Lcom/vzw/location/VzwGpsConfigInit;->setMpc(Ljava/net/InetAddress;I)V

    const-string v14, "VzwLocationManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[setVzwGpsConfigInit] Provider:["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "fqan":Ljava/lang/String;
    .end local v7    # "mNetworkInfo":Lcom/vzw/location/server/VzwModeNetworkInfo;
    .end local v8    # "mNetworkPermission":Z
    .end local v9    # "modeOperator":Lcom/vzw/location/server/VzwModeOperator;
    .end local v10    # "modeSelector":Lcom/vzw/location/server/VzwModeDeterminer;
    .end local v12    # "smsPrefix":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-virtual {v5, v6}, Lcom/vzw/location/server/VzwClient;->setVzwGpsConfigInit(Lcom/vzw/location/VzwGpsConfigInit;)V

    if-eqz v4, :cond_7

    const/16 v14, 0x8

    invoke-virtual {v5, v14}, Lcom/vzw/location/server/VzwClient;->reportOnGpsStatusChanged(I)Z

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vzw/location/server/VzwLocationManagerService;->vzwProvider:Lcom/vzw/location/provider/VzwGpsLocationProvider;

    iget v14, v14, Lcom/vzw/location/provider/VzwGpsLocationProvider;->mServerType:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    const-string v14, "VzwLocationManagerService"

    const-string v15, "[setVzwGpsConfigInit] TYPE SUPL "

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHost()Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/vzw/location/VzwGpsConfigInit;->getMpcHostPort()I

    move-result v15

    invoke-virtual {v6, v14, v15}, Lcom/vzw/location/VzwGpsConfigInit;->setLocSrv(Ljava/net/InetAddress;I)V

    const-string v14, "VzwLocationManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[setVzwGpsConfigInit] Config Info:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Lcom/vzw/location/VzwGpsConfigInit;->log()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    const/4 v14, 0x7

    invoke-virtual {v5, v14}, Lcom/vzw/location/server/VzwClient;->reportOnGpsStatusChanged(I)Z

    goto :goto_2
.end method

.method public systemReady()V
    .locals 3

    .prologue
    const-string v1, "VzwLocationManagerService"

    const-string v2, "In SystemReady of VzwLocationManagerService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    const-string v2, "VzwLocationManagerService"

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
