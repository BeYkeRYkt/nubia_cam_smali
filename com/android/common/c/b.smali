.class public Lcom/android/common/c/b;
.super Lcom/android/common/c/d;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private gB:Lcom/android/common/appService/W;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    const-string/jumbo v0, "SnapshotCommand"

    sput-object v0, Lcom/android/common/c/b;->TAG:Ljava/lang/String;

    .line 5
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/common/c/d;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/c/b;->gB:Lcom/android/common/appService/W;

    .line 10
    iput-object p1, p0, Lcom/android/common/c/b;->gB:Lcom/android/common/appService/W;

    .line 9
    return-void
.end method


# virtual methods
.method public hn()V
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/common/c/b;->gB:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ps()V

    .line 13
    return-void
.end method

.method public ho()I
    .registers 2

    .prologue
    .line 23
    const/16 v0, 0x2710

    return v0
.end method
