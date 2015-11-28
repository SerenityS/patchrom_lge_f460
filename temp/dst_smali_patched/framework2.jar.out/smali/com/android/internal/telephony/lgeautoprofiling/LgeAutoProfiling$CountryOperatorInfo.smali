.class Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;
.super Ljava/lang/Object;
.source "LgeAutoProfiling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountryOperatorInfo"
.end annotation


# instance fields
.field mCountry:Ljava/lang/String;

.field mOperator:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "operator"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;->mCountry:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;->mOperator:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;->mCountry:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling$CountryOperatorInfo;->mOperator:Ljava/lang/String;

    return-void
.end method
