.class public Lcom/loc/be;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public bgI:Lorg/json/JSONObject;

.field public bgJ:Lorg/json/JSONObject;

.field public bgK:Lorg/json/JSONObject;

.field public bgL:Lorg/json/JSONObject;

.field public bgM:Lorg/json/JSONObject;

.field public bgN:Lorg/json/JSONObject;

.field public bgO:Lorg/json/JSONObject;

.field public bgP:Lorg/json/JSONObject;

.field public bgQ:Lorg/json/JSONObject;

.field public bgR:Lcom/loc/aB;

.field public bgS:Lcom/loc/bL;

.field public bgT:Lcom/loc/bl;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/be;->b:I

    return-void
.end method
