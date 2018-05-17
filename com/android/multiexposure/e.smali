.class public Lcom/android/multiexposure/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private aqt:I

.field final synthetic aqu:Lcom/android/multiexposure/c;


# direct methods
.method public constructor <init>(Lcom/android/multiexposure/c;I)V
    .registers 3

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/multiexposure/e;->aqu:Lcom/android/multiexposure/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 319
    iput p2, p0, Lcom/android/multiexposure/e;->aqt:I

    .line 320
    invoke-virtual {p0}, Lcom/android/multiexposure/e;->start()V

    .line 318
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/multiexposure/e;->aqu:Lcom/android/multiexposure/c;

    iget-object v0, v0, Lcom/android/multiexposure/c;->aqd:Lcom/android/multiexposure/MultiExposure;

    if-eqz v0, :cond_1c

    .line 326
    iget-object v0, p0, Lcom/android/multiexposure/e;->aqu:Lcom/android/multiexposure/c;

    iget-object v0, v0, Lcom/android/multiexposure/c;->aqd:Lcom/android/multiexposure/MultiExposure;

    iget-object v1, p0, Lcom/android/multiexposure/e;->aqu:Lcom/android/multiexposure/c;

    invoke-virtual {v1}, Lcom/android/multiexposure/c;->aBZ()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/multiexposure/e;->aqu:Lcom/android/multiexposure/c;

    invoke-virtual {v2}, Lcom/android/multiexposure/c;->aBZ()[B

    move-result-object v2

    array-length v2, v2

    .line 327
    iget v3, p0, Lcom/android/multiexposure/e;->aqt:I

    .line 326
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/multiexposure/MultiExposure;->putData([BII)V

    .line 324
    :cond_1c
    return-void
.end method
