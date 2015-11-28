.class public abstract Lcom/vzw/location/geofence/VzwGeoFenceBase;
.super Ljava/lang/Object;
.source "VzwGeoFenceBase.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VzwGeoFenceBase"


# instance fields
.field private mGeoFences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/PendingIntent;",
            "Lcom/vzw/location/geofence/VzwGeoFenceParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceBase;->mGeoFences:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(DDJLandroid/app/PendingIntent;Ljava/lang/String;Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;)V
    .locals 12
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "expiration"    # J
    .param p7, "intent"    # Landroid/app/PendingIntent;
    .param p8, "packageName"    # Ljava/lang/String;
    .param p9, "circleParams"    # Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;
    .param p10, "ellipseParams"    # Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;
    .param p11, "polygonParams"    # Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;

    .prologue
    new-instance v0, Lcom/vzw/location/geofence/VzwGeoFenceParams;

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/vzw/location/geofence/VzwGeoFenceParams;-><init>(DDJLandroid/app/PendingIntent;Ljava/lang/String;Lcom/vzw/location/geofence/VzwGeoFenceCircleParams;Lcom/vzw/location/geofence/VzwGeoFenceEllipseParams;Lcom/vzw/location/geofence/VzwGeoFencePolygonParams;)V

    invoke-virtual {p0, v0}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->add(Lcom/vzw/location/geofence/VzwGeoFenceParams;)V

    return-void
.end method

.method public add(Lcom/vzw/location/geofence/VzwGeoFenceParams;)V
    .locals 3
    .param p1, "params"    # Lcom/vzw/location/geofence/VzwGeoFenceParams;

    .prologue
    const-string v0, "VzwGeoFenceBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[add] Entering. Adding new GeoFence with PendingIntnet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vzw/location/geofence/VzwGeoFenceBase;->mGeoFences:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceBase;->mGeoFences:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "VzwGeoFenceBase"

    const-string v1, "[add] Calling start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->start(Lcom/vzw/location/geofence/VzwGeoFenceParams;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/vzw/location/geofence/VzwGeoFenceBase;->mGeoFences:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceBase;->mGeoFences:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getAllGeoFences()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/vzw/location/geofence/VzwGeoFenceParams;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "VzwGeoFenceBase"

    const-string v1, "[getAllGeoFences] Entering."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceBase;->mGeoFences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getGeoFence(Landroid/app/PendingIntent;)Lcom/vzw/location/geofence/VzwGeoFenceParams;
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const-string v0, "VzwGeoFenceBase"

    const-string v1, "[getGeoFence] Entering."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceBase;->mGeoFences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/geofence/VzwGeoFenceParams;

    return-object v0
.end method

.method public getNumbOfGeoFences()I
    .locals 3

    .prologue
    const-string v0, "VzwGeoFenceBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getNumbOfGeoFences] Entering. Return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vzw/location/geofence/VzwGeoFenceBase;->mGeoFences:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vzw/location/geofence/VzwGeoFenceBase;->mGeoFences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public hasCaller(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    iget-object v2, p0, Lcom/vzw/location/geofence/VzwGeoFenceBase;->mGeoFences:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/geofence/VzwGeoFenceParams;

    .local v0, "alert":Lcom/vzw/location/geofence/VzwGeoFenceParams;
    iget v2, v0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mUid:I

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    .end local v0    # "alert":Lcom/vzw/location/geofence/VzwGeoFenceParams;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->remove(Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method public remove(Landroid/app/PendingIntent;Z)V
    .locals 5
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "localOnly"    # Z

    .prologue
    const-string v2, "VzwGeoFenceBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[remove] Entering. Remove a GeoFence with PendingIntent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "params":Lcom/vzw/location/geofence/VzwGeoFenceParams;
    iget-object v3, p0, Lcom/vzw/location/geofence/VzwGeoFenceBase;->mGeoFences:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/vzw/location/geofence/VzwGeoFenceBase;->mGeoFences:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/vzw/location/geofence/VzwGeoFenceParams;

    move-object v1, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "VzwGeoFenceBase"

    const-string v3, "[remove] Calling stop()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->stop(Landroid/app/PendingIntent;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/vzw/location/geofence/VzwGeoFenceBase;->mGeoFences:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/vzw/location/geofence/VzwGeoFenceBase;->mGeoFences:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public removeCaller(I)V
    .locals 7
    .param p1, "uid"    # I

    .prologue
    const-string v4, "VzwGeoFenceBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[removeCaller] Entering : uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .local v3, "removedFences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    iget-object v4, p0, Lcom/vzw/location/geofence/VzwGeoFenceBase;->mGeoFences:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/geofence/VzwGeoFenceParams;

    .local v0, "alert":Lcom/vzw/location/geofence/VzwGeoFenceParams;
    iget v4, v0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mUid:I

    if-ne v4, p1, :cond_0

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "removedFences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .restart local v3    # "removedFences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    :cond_1
    iget-object v4, v0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "alert":Lcom/vzw/location/geofence/VzwGeoFenceParams;
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    iget-object v4, p0, Lcom/vzw/location/geofence/VzwGeoFenceBase;->mGeoFences:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_3
    const-string v4, "VzwGeoFenceBase"

    const-string v5, "[removeCaller] Exiting"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract start(Lcom/vzw/location/geofence/VzwGeoFenceParams;)Z
.end method

.method protected abstract stop(Landroid/app/PendingIntent;)Z
.end method

.method public transferService(Lcom/vzw/location/geofence/VzwGeoFenceBase;)V
    .locals 4
    .param p1, "geofencer"    # Lcom/vzw/location/geofence/VzwGeoFenceBase;

    .prologue
    const-string v2, "VzwGeoFenceBase"

    const-string v3, "[transferService] Entering"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Lcom/vzw/location/geofence/VzwGeoFenceBase;->mGeoFences:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/location/geofence/VzwGeoFenceParams;

    .local v0, "alert":Lcom/vzw/location/geofence/VzwGeoFenceParams;
    iget-object v2, v0, Lcom/vzw/location/geofence/VzwGeoFenceParams;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v2}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->stop(Landroid/app/PendingIntent;)Z

    invoke-virtual {p0, v0}, Lcom/vzw/location/geofence/VzwGeoFenceBase;->add(Lcom/vzw/location/geofence/VzwGeoFenceParams;)V

    goto :goto_0

    .end local v0    # "alert":Lcom/vzw/location/geofence/VzwGeoFenceParams;
    :cond_0
    const-string v2, "VzwGeoFenceBase"

    const-string v3, "[transferService] Exiting"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
