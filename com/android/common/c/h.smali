.class public Lcom/android/common/c/h;
.super Lcom/android/common/c/d;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private gM:Lcom/android/common/ui/ZtemtModeSwitchButton;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    const-string/jumbo v0, "SwitchToVideoCommand"

    sput-object v0, Lcom/android/common/c/h;->TAG:Ljava/lang/String;

    .line 5
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/android/common/ui/ZtemtModeSwitchButton;)V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/common/c/d;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/c/h;->gM:Lcom/android/common/ui/ZtemtModeSwitchButton;

    .line 11
    iput-object p1, p0, Lcom/android/common/c/h;->gM:Lcom/android/common/ui/ZtemtModeSwitchButton;

    .line 10
    return-void
.end method


# virtual methods
.method public hn()V
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/common/c/h;->gM:Lcom/android/common/ui/ZtemtModeSwitchButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtModeSwitchButton;->wY()V

    .line 14
    return-void
.end method
