.class public Lcom/umeng/analytics/ReportPolicy$j;
.super Lcom/umeng/analytics/ReportPolicy$i;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/umeng/analytics/ReportPolicy$i;-><init>()V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/umeng/analytics/ReportPolicy$j;->a:Landroid/content/Context;

    .line 162
    iput-object p1, p0, Lcom/umeng/analytics/ReportPolicy$j;->a:Landroid/content/Context;

    .line 163
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/umeng/analytics/ReportPolicy$j;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/e;->bQv(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
