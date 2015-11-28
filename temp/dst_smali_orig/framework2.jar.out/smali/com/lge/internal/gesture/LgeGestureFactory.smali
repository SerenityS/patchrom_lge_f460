.class public Lcom/lge/internal/gesture/LgeGestureFactory;
.super Ljava/lang/Object;
.source "LgeGestureFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/internal/gesture/LgeGestureFactory$GestureType;
    }
.end annotation


# static fields
.field public static final SLIDEASIDE:Lcom/lge/internal/gesture/LgeGestureFactory$GestureType;

.field private static mSlideAside:Lcom/lge/internal/gesture/LgeGesture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/internal/gesture/LgeGestureFactory;->mSlideAside:Lcom/lge/internal/gesture/LgeGesture;

    sget-object v0, Lcom/lge/internal/gesture/LgeGestureFactory$GestureType;->SLIDEASIDE:Lcom/lge/internal/gesture/LgeGestureFactory$GestureType;

    sput-object v0, Lcom/lge/internal/gesture/LgeGestureFactory;->SLIDEASIDE:Lcom/lge/internal/gesture/LgeGestureFactory$GestureType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/lge/internal/gesture/LgeGestureFactory$GestureType;)Lcom/lge/internal/gesture/LgeGesture;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/lge/internal/gesture/LgeGestureFactory$GestureType;

    .prologue
    sget-object v0, Lcom/lge/internal/gesture/LgeGestureFactory$GestureType;->SLIDEASIDE:Lcom/lge/internal/gesture/LgeGestureFactory$GestureType;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/lge/internal/gesture/LgeGestureFactory;->mSlideAside:Lcom/lge/internal/gesture/LgeGesture;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lge/internal/gesture/LgeGestureFactory;->mSlideAside:Lcom/lge/internal/gesture/LgeGesture;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lge/internal/gesture/LgeSlideAsideImpl;

    invoke-direct {v0, p0}, Lcom/lge/internal/gesture/LgeSlideAsideImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lge/internal/gesture/LgeGestureFactory;->mSlideAside:Lcom/lge/internal/gesture/LgeGesture;

    sget-object v0, Lcom/lge/internal/gesture/LgeGestureFactory;->mSlideAside:Lcom/lge/internal/gesture/LgeGesture;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
