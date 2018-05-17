.class public Lcom/android/common/ui/MarqueeTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/android/common/ui/MarqueeTextView;->Fh()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-direct {p0}, Lcom/android/common/ui/MarqueeTextView;->Fh()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    invoke-direct {p0}, Lcom/android/common/ui/MarqueeTextView;->Fh()V

    .line 10
    return-void
.end method

.method private Fh()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/common/ui/MarqueeTextView;->setFocusable(Z)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/common/ui/MarqueeTextView;->setFocusableInTouchMode(Z)V

    .line 28
    invoke-virtual {p0}, Lcom/android/common/ui/MarqueeTextView;->setSingleLine()V

    .line 29
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/android/common/ui/MarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 30
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/common/ui/MarqueeTextView;->setMarqueeRepeatLimit(I)V

    .line 25
    return-void
.end method


# virtual methods
.method public isFocused()Z
    .registers 2

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .prologue
    .line 35
    if-eqz p1, :cond_5

    .line 36
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowFocusChanged(Z)V

    .line 34
    :cond_5
    return-void
.end method
