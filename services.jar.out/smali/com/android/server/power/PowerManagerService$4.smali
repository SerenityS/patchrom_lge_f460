.class Lcom/android/server/power/PowerManagerService$4;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 3566
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 3580
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 3569
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLightSensorEnabled:Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$3600(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3570
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3571
    .local v1, "time":J
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v3, v4

    .line 3572
    .local v0, "lux":F
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$4;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mCurrentLuxforABS:F
    invoke-static {v3, v0}, Lcom/android/server/power/PowerManagerService;->access$3702(Lcom/android/server/power/PowerManagerService;F)F

    .line 3575
    .end local v0    # "lux":F
    .end local v1    # "time":J
    :cond_0
    return-void
.end method
