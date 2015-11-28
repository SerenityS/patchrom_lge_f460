.class Lcom/android/internal/telephony/ConnectionState;
.super Ljava/lang/Object;
.source "CallStateBroadcaster.java"


# instance fields
.field conId:I

.field gsmId:I

.field state:Lcom/android/internal/telephony/Call$State;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/ConnectionState;->gsmId:I

    iput v0, p0, Lcom/android/internal/telephony/ConnectionState;->conId:I

    return-void
.end method
