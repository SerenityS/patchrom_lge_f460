.class public final enum Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;
.super Ljava/lang/Enum;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher$PendingMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SEND_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;

.field public static final enum MORE:Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;

.field public static final enum NORMAL:Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 329
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;->NORMAL:Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;

    .line 330
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;

    const-string v1, "MORE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;->MORE:Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;

    .line 328
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;

    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;->NORMAL:Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;->MORE:Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;->$VALUES:[Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 328
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 328
    const-class v0, Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;
    .locals 1

    .prologue
    .line 328
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;->$VALUES:[Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/SMSDispatcher$PendingMessage$SEND_TYPE;

    return-object v0
.end method
