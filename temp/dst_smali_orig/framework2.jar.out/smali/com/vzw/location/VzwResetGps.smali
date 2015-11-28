.class public Lcom/vzw/location/VzwResetGps;
.super Ljava/lang/Object;
.source "VzwResetGps.java"


# static fields
.field private static final R1:J = 0x1bdcbL

.field private static final R3_1:J = 0x50000000L

.field private static final R3_2:J = 0x50000008L

.field private static final R3_3:J = 0x2000000cL

.field private static final TAG:Ljava/lang/String; = "VzwResetGps"


# instance fields
.field private DEBUG:Z

.field private final TYPE_GPS_DELETE_ALL:Ljava/lang/String;

.field private final TYPE_GPS_DELETE_ALMANAC:Ljava/lang/String;

.field private final TYPE_GPS_DELETE_EPHEMERIS:Ljava/lang/String;

.field private final TYPE_GPS_DELETE_POSITION:Ljava/lang/String;

.field private final TYPE_GPS_DELETE_TIME:Ljava/lang/String;

.field private locMgr:Landroid/location/LocationManager;

.field public mClientID:J

.field private mContext:Landroid/content/Context;

.field public mResetType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vzw/location/VzwResetGps;->DEBUG:Z

    const-string v0, "ephemeris"

    iput-object v0, p0, Lcom/vzw/location/VzwResetGps;->TYPE_GPS_DELETE_EPHEMERIS:Ljava/lang/String;

    const-string v0, "position"

    iput-object v0, p0, Lcom/vzw/location/VzwResetGps;->TYPE_GPS_DELETE_POSITION:Ljava/lang/String;

    const-string v0, "almanac"

    iput-object v0, p0, Lcom/vzw/location/VzwResetGps;->TYPE_GPS_DELETE_ALMANAC:Ljava/lang/String;

    const-string v0, "time"

    iput-object v0, p0, Lcom/vzw/location/VzwResetGps;->TYPE_GPS_DELETE_TIME:Ljava/lang/String;

    const-string v0, "all"

    iput-object v0, p0, Lcom/vzw/location/VzwResetGps;->TYPE_GPS_DELETE_ALL:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/location/VzwResetGps;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/vzw/location/VzwResetGps;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vzw/location/VzwResetGps;->mResetType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vzw/location/VzwResetGps;->mClientID:J

    return-void
.end method


# virtual methods
.method public ResetGPS(II)Z
    .locals 2
    .param p1, "resetType"    # I
    .param p2, "clientID"    # I

    .prologue
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/vzw/location/VzwResetGps;->mClientID:J

    iget-wide v0, p0, Lcom/vzw/location/VzwResetGps;->mClientID:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/vzw/location/VzwResetGps;->ResetGPS(IJ)Z

    move-result v0

    return v0
.end method

.method public ResetGPS(IJ)Z
    .locals 7
    .param p1, "resetType"    # I
    .param p2, "clientID"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    iget-boolean v4, p0, Lcom/vzw/location/VzwResetGps;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "VzwResetGps"

    const-string v5, "ResetGPS() is called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/vzw/location/VzwResetGps;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gps"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .local v0, "bGpsEnabled":Z
    if-nez v0, :cond_2

    iget-boolean v4, p0, Lcom/vzw/location/VzwResetGps;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "VzwResetGps"

    const-string v5, "Location Providers are not initialized."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/vzw/location/VzwResetGps;->isValidClientID(J)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/vzw/location/VzwResetGps;->mContext:Landroid/content/Context;

    const-string v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    iput-object v4, p0, Lcom/vzw/location/VzwResetGps;->locMgr:Landroid/location/LocationManager;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "extras":Landroid/os/Bundle;
    const-string v3, "all"

    .local v3, "type":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    const-string v3, "all"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_1
    iget-object v4, p0, Lcom/vzw/location/VzwResetGps;->locMgr:Landroid/location/LocationManager;

    const-string v5, "gps"

    const-string v6, "delete_aiding_data"

    invoke-virtual {v4, v5, v6, v1}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    .local v2, "ret":Z
    iget-boolean v4, p0, Lcom/vzw/location/VzwResetGps;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "VzwResetGps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reset Type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / SendExtraCommand Successful? : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "ret":Z
    :pswitch_0
    const-string v3, "ephemeris"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_1
    const-string v3, "position"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_2
    const-string v3, "almanac"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_3
    const-string v3, "time"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected isValidClientID(I)Z
    .locals 2
    .param p1, "clientID"    # I

    .prologue
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/vzw/location/VzwResetGps;->mClientID:J

    iget-wide v0, p0, Lcom/vzw/location/VzwResetGps;->mClientID:J

    invoke-virtual {p0, v0, v1}, Lcom/vzw/location/VzwResetGps;->isValidClientID(J)Z

    move-result v0

    return v0
.end method

.method protected isValidClientID(J)Z
    .locals 4
    .param p1, "clientID"    # J

    .prologue
    iput-wide p1, p0, Lcom/vzw/location/VzwResetGps;->mClientID:J

    iget-wide v0, p0, Lcom/vzw/location/VzwResetGps;->mClientID:J

    const-wide/32 v2, 0x1bdcb

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/vzw/location/VzwResetGps;->mClientID:J

    const-wide/32 v2, 0x50000000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/vzw/location/VzwResetGps;->mClientID:J

    const-wide/32 v2, 0x50000008

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/vzw/location/VzwResetGps;->mClientID:J

    const-wide/32 v2, 0x2000000c

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/vzw/location/VzwResetGps;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "VzwResetGps"

    const-string v1, "Invalid client ID. Cannot proceed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const-string v0, "VzwResetGps"

    const-string v1, "Valid client ID, Keep going."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method
