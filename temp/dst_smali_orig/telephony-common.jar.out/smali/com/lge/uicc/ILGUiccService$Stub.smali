.class public abstract Lcom/lge/uicc/ILGUiccService$Stub;
.super Landroid/os/Binder;
.source "ILGUiccService.java"

# interfaces
.implements Lcom/lge/uicc/ILGUiccService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/uicc/ILGUiccService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/uicc/ILGUiccService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.uicc.ILGUiccService"

.field static final TRANSACTION_genericIO:I = 0x3

.field static final TRANSACTION_getProperty:I = 0x1

.field static final TRANSACTION_readIccRecord:I = 0x4

.field static final TRANSACTION_readIccRecordAllToString:I = 0x7

.field static final TRANSACTION_readIccRecordToString:I = 0x6

.field static final TRANSACTION_requestEnvelope:I = 0x9

.field static final TRANSACTION_setProperty:I = 0x2

.field static final TRANSACTION_updateIccRecord:I = 0x5

.field static final TRANSACTION_updateIccRecordFromString:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.lge.uicc.ILGUiccService"

    invoke-virtual {p0, p0, v0}, Lcom/lge/uicc/ILGUiccService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/uicc/ILGUiccService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.lge.uicc.ILGUiccService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/uicc/ILGUiccService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/lge/uicc/ILGUiccService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/lge/uicc/ILGUiccService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/uicc/ILGUiccService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v4, "com.lge.uicc.ILGUiccService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "com.lge.uicc.ILGUiccService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/lge/uicc/ILGUiccService$Stub;->getProperty(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v6, "com.lge.uicc.ILGUiccService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/uicc/ILGUiccService$Stub;->setProperty(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_3
    const-string v4, "com.lge.uicc.ILGUiccService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Lcom/lge/uicc/ILGUiccService$Stub;->genericIO(Ljava/lang/String;[B)[B

    move-result-object v3

    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v3    # "_result":[B
    :sswitch_4
    const-string v4, "com.lge.uicc.ILGUiccService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/uicc/ILGUiccService$Stub;->readIccRecord(I)[B

    move-result-object v3

    .restart local v3    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":[B
    :sswitch_5
    const-string v6, "com.lge.uicc.ILGUiccService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .restart local v1    # "_arg1":[B
    invoke-virtual {p0, v0, v1}, Lcom/lge/uicc/ILGUiccService$Stub;->updateIccRecord(I[B)Z

    move-result v3

    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    .end local v3    # "_result":Z
    :sswitch_6
    const-string v4, "com.lge.uicc.ILGUiccService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/uicc/ILGUiccService$Stub;->readIccRecordToString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v4, "com.lge.uicc.ILGUiccService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/lge/uicc/ILGUiccService$Stub;->readIccRecordAllToString(I)[Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v3    # "_result":[Ljava/lang/String;
    :sswitch_8
    const-string v6, "com.lge.uicc.ILGUiccService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/lge/uicc/ILGUiccService$Stub;->updateIccRecordFromString(ILjava/lang/String;)Z

    move-result v3

    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_9
    const-string v4, "com.lge.uicc.ILGUiccService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/lge/uicc/ILGUiccService$Stub;->requestEnvelope(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
