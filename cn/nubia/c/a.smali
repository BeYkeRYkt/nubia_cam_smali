.class public Lcn/nubia/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bqf:Ljava/lang/String;

.field private bqg:Ljava/lang/String;

.field private bqh:Ljava/lang/String;

.field private bqi:Ljava/lang/String;

.field private bqj:I

.field private bqk:Ljava/util/ArrayList;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v1, p0, Lcn/nubia/c/a;->bqf:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcn/nubia/c/a;->bqg:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcn/nubia/c/a;->bqh:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcn/nubia/c/a;->bqi:Ljava/lang/String;

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcn/nubia/c/a;->bqj:I

    .line 11
    iput-object v1, p0, Lcn/nubia/c/a;->bqk:Ljava/util/ArrayList;

    .line 15
    iput-object p1, p0, Lcn/nubia/c/a;->bqf:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcn/nubia/c/a;->bqg:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcn/nubia/c/a;->bqh:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcn/nubia/c/a;->bqi:Ljava/lang/String;

    .line 19
    iput p5, p0, Lcn/nubia/c/a;->bqj:I

    .line 20
    iput-object p6, p0, Lcn/nubia/c/a;->bqk:Ljava/util/ArrayList;

    .line 21
    return-void
.end method


# virtual methods
.method public bMK()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/c/a;->bqf:Ljava/lang/String;

    return-object v0
.end method

.method public bML()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcn/nubia/c/a;->bqg:Ljava/lang/String;

    return-object v0
.end method

.method public bMM()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcn/nubia/c/a;->bqh:Ljava/lang/String;

    return-object v0
.end method

.method public bMN()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/c/a;->bqi:Ljava/lang/String;

    return-object v0
.end method

.method public bMO()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcn/nubia/c/a;->bqj:I

    return v0
.end method
