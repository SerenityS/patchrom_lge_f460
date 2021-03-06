.class public Lcom/itsoninc/android/APIFailClose;
.super Ljava/lang/Object;
.source "APIFailClose.java"

# interfaces
.implements Lcom/itsoninc/android/ItsOnOemInterface;


# instance fields
.field final DEBUG:Z

.field final LOGTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsoninc/android/APIFailClose;->DEBUG:Z

    .line 13
    const-class v0, Lcom/itsoninc/android/APIFailClose;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsoninc/android/APIFailClose;->LOGTAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public accountMms(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 132
    return-void
.end method

.method public authorizeIncomingMms(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public authorizeIncomingSms(Ljava/lang/String;Lcom/itsoninc/android/SmsType;Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/itsoninc/android/SmsType;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public authorizeIncomingSms([B)Z
    .locals 1
    .param p1, "pdu"    # [B

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public authorizeIncomingVoice(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public authorizeOutgoingMms(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public authorizeOutgoingMms(Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p2, "transactionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public authorizeOutgoingSms(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "serial"    # I

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public authorizeOutgoingSms([BI)Z
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "serial"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public authorizeOutgoingVoice(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public callWaiting(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public cleanupMms(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 138
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public dial(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public flash(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureCode"    # Ljava/lang/String;

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public initFramework(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    return-void
.end method

.method public initTelephony(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    return-void
.end method

.method public isDataAllowed(JLjava/lang/String;)Z
    .locals 1
    .param p1, "systemId"    # J
    .param p3, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public nitzTimeReceived(Ljava/lang/String;J)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    .prologue
    .line 168
    return-void
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 171
    return-void
.end method

.method public onImportanceChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .prologue
    .line 174
    return-void
.end method

.method public onNewDataSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;

    .prologue
    .line 193
    return-void
.end method

.method public onProcessDied(II)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 177
    return-void
.end method

.method public processCDMACallList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itsoninc/android/DeviceCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "callList":Ljava/util/List;, "Ljava/util/List<Lcom/itsoninc/android/DeviceCall;>;"
    return-void
.end method

.method public processCallList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/itsoninc/android/DeviceCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "callList":Ljava/util/List;, "Ljava/util/List<Lcom/itsoninc/android/DeviceCall;>;"
    return-void
.end method

.method public registerActivityMapping(Ljava/lang/String;I)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 31
    return-void
.end method

.method public registerDownloadMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 19
    return-void
.end method

.method public registerMediaMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    return-void
.end method

.method public rejectCall()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    return-void
.end method

.method public setDataConnectionHandler(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "trySetupDataMessage"    # Landroid/os/Message;

    .prologue
    .line 190
    return-void
.end method

.method public setEmergencyMode(Z)V
    .locals 0
    .param p1, "inEmergencyMode"    # Z

    .prologue
    .line 159
    return-void
.end method

.method public setFrameworkInterface(Lcom/itsoninc/android/ItsOnFrameworkInterface;)V
    .locals 0
    .param p1, "fwIf"    # Lcom/itsoninc/android/ItsOnFrameworkInterface;

    .prologue
    .line 43
    return-void
.end method

.method public smsDone(I)V
    .locals 0
    .param p1, "serial"    # I

    .prologue
    .line 92
    return-void
.end method

.method public smsError(I)V
    .locals 0
    .param p1, "serial"    # I

    .prologue
    .line 98
    return-void
.end method
