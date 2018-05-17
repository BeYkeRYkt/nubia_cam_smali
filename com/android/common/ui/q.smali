.class Lcom/android/common/ui/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/p;


# instance fields
.field final rJ:[Ljava/lang/Object;

.field final rK:Ljava/lang/StringBuilder;

.field rL:Ljava/util/Formatter;

.field rM:C


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/q;->rK:Ljava/lang/StringBuilder;

    .line 536
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/common/ui/q;->rJ:[Ljava/lang/Object;

    .line 539
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 540
    invoke-direct {p0, v0}, Lcom/android/common/ui/q;->wK(Ljava/util/Locale;)V

    .line 538
    return-void
.end method

.method private wI(Ljava/util/Locale;)Ljava/util/Formatter;
    .registers 4

    .prologue
    .line 565
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/common/ui/q;->rK:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    return-object v0
.end method

.method private static wJ(Ljava/util/Locale;)C
    .registers 2

    .prologue
    .line 561
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    return v0
.end method

.method private wK(Ljava/util/Locale;)V
    .registers 3

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/android/common/ui/q;->wI(Ljava/util/Locale;)Ljava/util/Formatter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/q;->rL:Ljava/util/Formatter;

    .line 545
    invoke-static {p1}, Lcom/android/common/ui/q;->wJ(Ljava/util/Locale;)C

    move-result v0

    iput-char v0, p0, Lcom/android/common/ui/q;->rM:C

    .line 543
    return-void
.end method


# virtual methods
.method public wH(I)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 549
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 550
    iget-char v1, p0, Lcom/android/common/ui/q;->rM:C

    invoke-static {v0}, Lcom/android/common/ui/q;->wJ(Ljava/util/Locale;)C

    move-result v2

    if-eq v1, v2, :cond_10

    .line 551
    invoke-direct {p0, v0}, Lcom/android/common/ui/q;->wK(Ljava/util/Locale;)V

    .line 553
    :cond_10
    iget-object v0, p0, Lcom/android/common/ui/q;->rJ:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 554
    iget-object v0, p0, Lcom/android/common/ui/q;->rK:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/common/ui/q;->rK:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 555
    iget-object v0, p0, Lcom/android/common/ui/q;->rL:Ljava/util/Formatter;

    const-string/jumbo v1, "%02d"

    iget-object v2, p0, Lcom/android/common/ui/q;->rJ:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 556
    iget-object v0, p0, Lcom/android/common/ui/q;->rL:Ljava/util/Formatter;

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
