.class public Lcom/android/common/c/o;
.super Lcom/android/common/c/d;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private gT:Lcom/android/common/ui/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    const-string/jumbo v0, "SwitchCameraCommand"

    sput-object v0, Lcom/android/common/c/o;->TAG:Ljava/lang/String;

    .line 5
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/android/common/ui/i;)V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/common/c/d;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/c/o;->gT:Lcom/android/common/ui/i;

    .line 10
    iput-object p1, p0, Lcom/android/common/c/o;->gT:Lcom/android/common/ui/i;

    .line 9
    return-void
.end method


# virtual methods
.method public hn()V
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/common/c/o;->gT:Lcom/android/common/ui/i;

    invoke-virtual {v0}, Lcom/android/common/ui/i;->vy()V

    .line 13
    return-void
.end method

.method public ho()I
    .registers 2

    .prologue
    .line 18
    const/16 v0, 0xbb8

    return v0
.end method
