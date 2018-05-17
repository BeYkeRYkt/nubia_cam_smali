.class public Lcom/umeng/analytics/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/umeng/analytics/e;->a:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 10
    sget-object v0, Lcom/umeng/analytics/e;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 11
    sget-object v0, Lcom/umeng/analytics/e;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 12
    if-nez p0, :cond_d

    .line 15
    :goto_c
    return-void

    .line 13
    :cond_d
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/umeng/analytics/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static a(Landroid/content/Context;)[Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    sget-object v0, Lcom/umeng/analytics/e;->a:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 22
    :cond_d
    if-nez p0, :cond_1d

    .line 30
    :cond_f
    return-object v1

    .line 18
    :cond_10
    sget-object v0, Lcom/umeng/analytics/e;->a:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 19
    sget-object v0, Lcom/umeng/analytics/e;->a:[Ljava/lang/String;

    return-object v0

    .line 23
    :cond_1d
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->a()[Ljava/lang/String;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_f

    .line 25
    sget-object v1, Lcom/umeng/analytics/e;->a:[Ljava/lang/String;

    aget-object v2, v0, v3

    aput-object v2, v1, v3

    .line 26
    sget-object v1, Lcom/umeng/analytics/e;->a:[Ljava/lang/String;

    aget-object v0, v0, v4

    aput-object v0, v1, v4

    .line 27
    sget-object v0, Lcom/umeng/analytics/e;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 34
    sget-object v0, Lcom/umeng/analytics/e;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 35
    sget-object v0, Lcom/umeng/analytics/e;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 37
    if-nez p0, :cond_e

    .line 40
    :goto_d
    return-void

    .line 38
    :cond_e
    invoke-static {p0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->b()V

    goto :goto_d
.end method
