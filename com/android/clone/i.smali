.class public Lcom/android/clone/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aTu:Lcom/android/clone/i;


# instance fields
.field private aTt:Lcom/android/clone/CloneStatus$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 4
    new-instance v0, Lcom/android/clone/i;

    invoke-direct {v0}, Lcom/android/clone/i;-><init>()V

    sput-object v0, Lcom/android/clone/i;->aTu:Lcom/android/clone/i;

    .line 3
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lcom/android/clone/CloneStatus$Status;->aTw:Lcom/android/clone/CloneStatus$Status;

    iput-object v0, p0, Lcom/android/clone/i;->aTt:Lcom/android/clone/CloneStatus$Status;

    .line 7
    return-void
.end method

.method public static bkN()Lcom/android/clone/i;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/android/clone/i;->aTu:Lcom/android/clone/i;

    return-object v0
.end method


# virtual methods
.method public bkO(Lcom/android/clone/CloneStatus$Status;)V
    .registers 2

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/clone/i;->aTt:Lcom/android/clone/CloneStatus$Status;

    .line 18
    return-void
.end method

.method public bkP()Lcom/android/clone/CloneStatus$Status;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/clone/i;->aTt:Lcom/android/clone/CloneStatus$Status;

    return-object v0
.end method
