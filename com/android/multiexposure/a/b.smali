.class public Lcom/android/multiexposure/a/b;
.super Lcom/android/common/c/d;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private aqa:Lcom/android/multiexposure/t;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const-string/jumbo v0, "MultiExposureCommand"

    sput-object v0, Lcom/android/multiexposure/a/b;->TAG:Ljava/lang/String;

    .line 6
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/android/multiexposure/t;)V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/common/c/d;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/multiexposure/a/b;->aqa:Lcom/android/multiexposure/t;

    .line 11
    iput-object p1, p0, Lcom/android/multiexposure/a/b;->aqa:Lcom/android/multiexposure/t;

    .line 10
    return-void
.end method


# virtual methods
.method public hn()V
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/multiexposure/a/b;->aqa:Lcom/android/multiexposure/t;

    invoke-virtual {v0}, Lcom/android/multiexposure/t;->aDH()V

    .line 14
    return-void
.end method

.method public ho()I
    .registers 2

    .prologue
    .line 23
    const/4 v0, -0x1

    return v0
.end method
